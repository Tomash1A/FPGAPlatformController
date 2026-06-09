"""
BRAM / DDS frequency and amplitude profile controller for PYNQ.

Replaces BRAMMixin from PC_code/bram.py — every BRAM access goes directly
via pynq.MMIO constructed from the overlay's memory dictionary (no TCP,
no hard-coded base addresses).

Hardware (as seen in ol?):
---------------------------
    Overlay alias                              Role
    ─────────────────────────────────────────────────────────────────
    MT_0IQ32tones_w_bramaxi_bram_ctrl_0       Frequency BRAM – DAC1 AB (IQ ch1)
    MT_1IQ32tones_w_bramaxi_bram_ctrl_0       Frequency BRAM – DAC1 CD (IQ ch2)
    MT_0bram_AMP_ctrl                          Amplitude BRAM – DAC1 AB
    MT_1bram_AMP_ctrl                          Amplitude BRAM – DAC1 CD

Channel mapping used throughout this driver:
    channel 1  →  MT_0  (DAC1 AB pair — IQ channel 1)
    channel 2  →  MT_1  (DAC1 CD pair — IQ channel 2)

Note: profile_base_addr and AM_onoff are driven externally by another board
via FPGA pins. Python only loads data into the BRAMs.

Frequency BRAM data format (per signal, 8 bytes = 2 × 32-bit words):
    Word 0 (lower byte address)  : PINC
        pinc = int(freq_hz × 2³² / DDS_CLOCK_HZ)
    Word 1 (higher byte address) : amplitude + phase
        bits [31:16] = phase_word  (int(phase_deg × 65536 / 360))
        bits [15: 0] = amp_word    (int(amp_0_to_1 × 32767))

Profile layout in frequency BRAM:
    Profile n starts at byte offset  n × 32_signals × 8_bytes = n × 256

Amplitude BRAM layout (pointer table + ramp data):
    0x000–0x0FF  Pointer table (64 entries × 4 bytes)
        Entry (profile p, ON ) at byte (p << 1) << 2
        Entry (profile p, OFF) at byte ((p << 1) | 1) << 2
        Stored value = ramp_start_byte_addr >> 2
    0x100+       Ramp data (dynamically allocated)
        Each word: ((num_steps & 0xFFFF) << 16) | (step_size & 0xFFFF)
        End marker: 0x00000000

Usage:
    from pynq import Overlay
    ol = Overlay('./projectHW_MT.xsa')

    from pynq_bram import BRAMController
    bram = BRAMController(ol)
    bram.bram_init()

    bram.set_freq_profile(channel=1, profile_num=0,
                          data=[(1.0, 5.0, 0), (0.5, 10.0, 90)])

    bram.set_amp_profile(channel=1, profile_num=0,
                         on_ramps=[(500, 1000)],
                         off_ramps=[(500, -1000)])
"""

from pynq import MMIO
from pynq_amp_allocator import AmpMemoryAllocator

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------

# DDS Compiler clock — must match DDS_CLK_HZ in pynq_dds.py and Vivado IP
DDS_CLOCK_HZ: int = 62_500_000   # 62.5 MHz

# Phase word resolution (16-bit = 65536 steps per 360°)
_PHASE_STEPS: int = 65536

# Frequency BRAM layout
_SIGNALS_PER_PROFILE: int = 32
_BYTES_PER_SIGNAL   : int = 8    # 2 × 32-bit words
_BYTES_PER_PROFILE  : int = _SIGNALS_PER_PROFILE * _BYTES_PER_SIGNAL  # 256

# ---------------------------------------------------------------------------
# MT_CTRL AXI GPIO  (2-bit output → DDS_EN RTL block → counter_clr on MT_0/MT_1)
# ---------------------------------------------------------------------------

# Key in ol.ip_dict for the control GPIO
_CTRL_GPIO_NAME = 'MT_CTRL'

# AXI GPIO channel-1 data register offset
_CTRL_DATA_REG = 0x00

# Bit masks (match bsp.h: MT_AMP_BYPASS=0x1, MT_DDS_ENABLE=0x2)
_BIT_AMP_BYPASS = 0x1   # bypass amplitude ramp — forced LOW (0) for now
_BIT_DDS_EN     = 0x2   # counter_clr: HIGH freezes DDS while BRAM is written

# ---------------------------------------------------------------------------
# Overlay memory alias → channel mapping
# ---------------------------------------------------------------------------

# Keys in ol.mem_dict  (names come from the Vivado block design)
_FREQ_MEM_NAMES: dict[int, str] = {
    1: 'MT_0/IQ32tones_w_bram/axi_bram_ctrl_0',   # MT hierarchy 1
    2: 'MT_1/IQ32tones_w_bram/axi_bram_ctrl_0',   # MT hierarchy 2
    3: 'MT_2/IQ32tones_w_bram/axi_bram_ctrl_0',   # MT hierarchy 3
    4: 'MT_3/IQ32tones_w_bram/axi_bram_ctrl_0',   # MT hierarchy 4
}

_AMP_MEM_NAMES: dict[int, str] = {
    1: 'MT_0/bram_AMP_ctrl',   # MT hierarchy 1 amplitude
    2: 'MT_1/bram_AMP_ctrl',   # MT hierarchy 2 amplitude
    3: 'MT_2/bram_AMP_ctrl',   # MT hierarchy 3 amplitude
    4: 'MT_3/bram_AMP_ctrl',   # MT hierarchy 4 amplitude
}

_VALID_CHANNELS = (1, 2, 3, 4)


# ---------------------------------------------------------------------------
# Internal helpers
# ---------------------------------------------------------------------------

def _mem_to_mmio(ol, name: str) -> MMIO:
    """Create a pynq.MMIO from an overlay memory alias name."""
    entry = ol.mem_dict[name]
    return MMIO(entry['phys_addr'], entry['addr_range'])


def _pinc(freq_hz: float) -> int:
    """32-bit frequency tuning word  (PINC = freq_hz × 2³² / DDS_CLOCK_HZ)."""
    word = int(freq_hz * (1 << 32) / DDS_CLOCK_HZ)
    return max(0, min(0xFFFF_FFFF, word))


def _pack_signal(amp: float, freq_hz: float,
                 phase_deg: float) -> tuple[int, int]:
    """
    Pack one tone into two consecutive 32-bit BRAM words.

    Returns
    -------
    (word0, word1)
        word0 = PINC   (frequency tuning word)
        word1 = (phase_16bit << 16) | amp_16bit
    """
    freq_word  = _pinc(freq_hz)
    phase_word = int((phase_deg / 360.0) * _PHASE_STEPS) & 0xFFFF
    amp_word   = max(0, min(32767, int(amp * 32767))) & 0xFFFF
    return freq_word, (phase_word << 16) | amp_word


def _unpack_signal(word0: int, word1: int) -> tuple[float, float, float]:
    """
    Unpack two 32-bit BRAM words into (amplitude, freq_mhz, phase_deg).
    Inverse of _pack_signal.
    """
    freq_mhz  = (word0 / (1 << 32)) * DDS_CLOCK_HZ / 1e6
    phase_deg = ((word1 >> 16) / _PHASE_STEPS) * 360.0
    amplitude = (word1 & 0xFFFF) / 32767.0
    return amplitude, freq_mhz, phase_deg


# ---------------------------------------------------------------------------
# BRAMController
# ---------------------------------------------------------------------------

class BRAMController:
    """
    PYNQ-native BRAM controller.

    Mirrors the BRAMMixin API from PC_code/bram.py, but replaces every
    TCP _send_command() with a direct pynq.MMIO read/write via the
    overlay's memory dictionary.

    Parameters
    ----------
    ol : pynq.Overlay
        Loaded overlay object (must contain the MT_0/MT_1 memories).

    Channel mapping
    ---------------
        channel 1  →  MT_0  (DAC1)
        channel 2  →  MT_1  (DAC2)
    """

    # Expose name maps for inspection / debug
    FREQ_MEM_NAMES = _FREQ_MEM_NAMES
    AMP_MEM_NAMES  = _AMP_MEM_NAMES

    def __init__(self, ol):
        self._freq_mmio: dict[int, MMIO] = {}
        self._amp_mmio : dict[int, MMIO] = {}

        for ch, name in _FREQ_MEM_NAMES.items():
            if name not in ol.mem_dict:
                raise KeyError(
                    f"Frequency BRAM '{name}' not found in overlay.\n"
                    f"Available memories: {list(ol.mem_dict.keys())}"
                )
            self._freq_mmio[ch] = _mem_to_mmio(ol, name)

        for ch, name in _AMP_MEM_NAMES.items():
            if name not in ol.mem_dict:
                raise KeyError(
                    f"Amplitude BRAM '{name}' not found in overlay.\n"
                    f"Available memories: {list(ol.mem_dict.keys())}"
                )
            self._amp_mmio[ch] = _mem_to_mmio(ol, name)

        # MT_CTRL AXI GPIO — drives DDS_EN (counter_clr) and AMP_BYPASS
        if _CTRL_GPIO_NAME in ol.ip_dict:
            entry = ol.ip_dict[_CTRL_GPIO_NAME]
            self._ctrl_mmio = MMIO(entry['phys_addr'], 0x10)
            self._ctrl_mmio.write(_CTRL_DATA_REG, 0x00)   # DDS_EN=0, BYPASS=0
            print(f"  MT_CTRL   GPIO@0x{entry['phys_addr']:08X}")
        else:
            self._ctrl_mmio = None
            print(f"  ⚠ '{_CTRL_GPIO_NAME}' not found in overlay — "
                  f"DDS freeze disabled  (available: {list(ol.ip_dict.keys())})")

        # One allocator per channel
        self._allocators: dict[int, AmpMemoryAllocator] = {
            ch: AmpMemoryAllocator() for ch in _VALID_CHANNELS
        }

        self.initialized: bool = False

        print("BRAMController ready")
        print(f"  DDS clock : {DDS_CLOCK_HZ / 1e6:.1f} MHz")
        for ch in _VALID_CHANNELS:
            fa = ol.mem_dict[_FREQ_MEM_NAMES[ch]]
            aa = ol.mem_dict[_AMP_MEM_NAMES[ch]]
            print(f"  CH{ch}  freq@0x{fa['phys_addr']:08X}"
                  f"  amp@0x{aa['phys_addr']:08X}")

    # -----------------------------------------------------------------------
    # MT_CTRL helpers — freeze / unfreeze DDS around BRAM writes
    # -----------------------------------------------------------------------

    def _freeze(self) -> None:
        """Assert DDS_EN (counter_clr=1) to freeze DDS before a BRAM write."""
        if self._ctrl_mmio:
            self._ctrl_mmio.write(_CTRL_DATA_REG, _BIT_DDS_EN)  # BYPASS=0, DDS_EN=1

    def _unfreeze(self) -> None:
        """Deassert DDS_EN (counter_clr=0) to resume DDS after a BRAM write."""
        if self._ctrl_mmio:
            self._ctrl_mmio.write(_CTRL_DATA_REG, 0x00)          # BYPASS=0, DDS_EN=0

    # -----------------------------------------------------------------------
    # Init / reset
    # -----------------------------------------------------------------------

    def bram_init(self) -> bool:
        """
        Zero the amplitude BRAM pointer tables and reset all allocators.
        Call once after overlay load (before any set_amp_profile calls).
        Mirrors ZynqController.bram_init().
        """
        print("\n[BRAM] Initializing...")
        self._freeze()
        for ch in _VALID_CHANNELS:
            mmio = self._amp_mmio[ch]
            for offset in range(0, 0x100, 4):
                mmio.write(offset, 0)
            self._allocators[ch].reset()
        self._unfreeze()

        self.initialized = True
        print("✓ BRAM initialized (pointer tables cleared)\n")
        return True

    def get_amp_allocator(self, channel: int) -> AmpMemoryAllocator:
        """Return the AmpMemoryAllocator for *channel* (1 or 2)."""
        self._check_ch(channel)
        return self._allocators[channel]

    def reset_amp_memory(self, channel: int | None = None) -> None:
        """
        Reset amplitude allocator(s) and clear BRAM pointer table(s).

        Args:
            channel: 1 or 2 to reset one channel; None to reset both.
        """
        targets = [channel] if channel else list(_VALID_CHANNELS)
        for ch in targets:
            self._check_ch(ch)
            self._allocators[ch].reset()
            for offset in range(0, 0x100, 4):
                self._amp_mmio[ch].write(offset, 0)
        print(f"✓ Amplitude memory reset for channel(s) {targets}")

    # -----------------------------------------------------------------------
    # Low-level word access
    # -----------------------------------------------------------------------

    def _check_ch(self, channel: int) -> None:
        if channel not in _VALID_CHANNELS:
            raise ValueError(
                f"channel must be 1 (MT_0/DAC1) or 2 (MT_1/DAC2), got {channel}"
            )

    def _write_freq_word(self, ch: int, byte_offset: int, value: int) -> None:
        self._freq_mmio[ch].write(byte_offset, value & 0xFFFF_FFFF)

    def _read_freq_word(self, ch: int, byte_offset: int) -> int:
        return self._freq_mmio[ch].read(byte_offset)

    def _write_amp_word(self, ch: int, byte_offset: int, value: int) -> None:
        self._amp_mmio[ch].write(byte_offset, value & 0xFFFF_FFFF)

    def _read_amp_word(self, ch: int, byte_offset: int) -> int:
        return self._amp_mmio[ch].read(byte_offset)

    # -----------------------------------------------------------------------
    # Frequency profile
    # -----------------------------------------------------------------------

    def _calc_freq_offset(self, profile_num: int, signal_num: int) -> int:
        """Byte offset in frequency BRAM for signal *signal_num* of *profile_num*."""
        return profile_num * _BYTES_PER_PROFILE + signal_num * _BYTES_PER_SIGNAL

    def _validate_freq_data(self, profile_num: int, data: list) -> bool:
        if not (0 <= profile_num <= 7):
            print(f"✗ Profile number {profile_num} out of range (0–7)")
            return False
        if not data:
            print("✗ No signal data provided")
            return False
        if len(data) > _SIGNALS_PER_PROFILE:
            print(f"✗ Too many signals ({len(data)}); max {_SIGNALS_PER_PROFILE}")
            return False
        for idx, sig in enumerate(data):
            if len(sig) != 3:
                print(f"✗ Signal {idx}: must be (amp, freq_mhz, phase_deg)")
                return False
            amp, freq_mhz, phase_deg = sig
            if not (0.0 <= amp <= 1.0):
                print(f"⚠ Signal {idx}: amplitude {amp} outside [0, 1] — will be clamped")
            if not (0 <= freq_mhz <= DDS_CLOCK_HZ / 2e6):
                print(f"⚠ Signal {idx}: freq {freq_mhz} MHz exceeds Nyquist"
                      f" ({DDS_CLOCK_HZ / 2e6:.1f} MHz)")
            if not (0 <= phase_deg <= 360):
                print(f"✗ Signal {idx}: phase {phase_deg}° out of range (0–360)")
                return False
        return True

    def set_freq_profile(self, channel: int, profile_num: int,
                         data: list, DEBUG: int = 0) -> bool:
        """
        Write a frequency profile to the frequency BRAM.

        Args:
            channel    : 1 (MT_0 / DAC1) or 2 (MT_1 / DAC2)
            profile_num: 0–7
            data       : [(amp, freq_mhz, phase_deg), …]  up to 32 signals
            DEBUG      : Non-zero → print each signal's encoding.

        Returns True if all signals written successfully.
        """
        self._check_ch(channel)
        if not self._validate_freq_data(profile_num, data):
            return False

        if DEBUG:
            ch_name = _FREQ_MEM_NAMES[channel]
            print(f"\n[FREQ_PROFILE] CH{channel} ({ch_name})"
                  f"  Profile {profile_num}  ({len(data)} signal(s))")

        self._freeze()
        for sig_num, (amp, freq_mhz, phase_deg) in enumerate(data):
            offset = self._calc_freq_offset(profile_num, sig_num)
            w0, w1 = _pack_signal(amp, freq_mhz * 1e6, phase_deg)
            self._write_freq_word(channel, offset,     w0)   # PINC
            self._write_freq_word(channel, offset + 4, w1)   # phase + amp

            if DEBUG:
                print(f"  [{sig_num:2d}] amp={amp:.3f}  freq={freq_mhz} MHz"
                      f"  phase={phase_deg}°"
                      f"  → 0x{w0:08X}  0x{w1:08X}")
        self._unfreeze()

        if DEBUG:
            print(f"✓ {len(data)} signal(s) written\n")
        return True

    def get_freq_profile(self, channel: int, profile_num: int,
                         max_signals: int = _SIGNALS_PER_PROFILE) -> list | None:
        """
        Read a frequency profile back from BRAM.

        Args:
            channel    : 1 or 2
            profile_num: 0–7
            max_signals: Stop after reading this many signals.

        Returns [(amplitude, freq_mhz, phase_deg), …] or None on error.
        """
        self._check_ch(channel)
        if not (0 <= profile_num <= 7):
            print(f"✗ Invalid profile {profile_num} (must be 0–7)")
            return None

        print(f"\n[FREQ_PROFILE] Reading CH{channel} Profile {profile_num}")

        signals = []
        for i in range(max_signals):
            offset = self._calc_freq_offset(profile_num, i)
            w0 = self._read_freq_word(channel, offset)      # PINC
            w1 = self._read_freq_word(channel, offset + 4)  # phase + amp

            # All-zero or all-ones = end-of-profile sentinel
            if (w0 == 0 and w1 == 0) or (w0 == 0xFFFF_FFFF and w1 == 0xFFFF_FFFF):
                print(f"  End of profile at signal {i}")
                break

            amp, freq_mhz, phase_deg = _unpack_signal(w0, w1)
            signals.append((amp, freq_mhz, phase_deg))
            print(f"  [{i:2d}]  amp={amp:.3f}  freq={freq_mhz:.3f} MHz"
                  f"  phase={phase_deg:.1f}°")

        print(f"✓ Read {len(signals)} signal(s)\n")
        return signals

    # -----------------------------------------------------------------------
    # Amplitude profile
    # -----------------------------------------------------------------------

    def set_amp_profile(self, channel: int, profile_num: int,
                        on_ramps : list,
                        off_ramps: list,
                        allocator: AmpMemoryAllocator | None = None,
                        DEBUG    : int = 0) -> bool:
        """
        Write an amplitude ramp profile to the amplitude BRAM.

        Args:
            channel    : 1 (MT_0 / DAC1) or 2 (MT_1 / DAC2)
            profile_num: 0–7
            on_ramps   : [(num_steps, step_size), …] for ON  transition (ramp up)
            off_ramps  : [(num_steps, step_size), …] for OFF transition (ramp down)
            allocator  : AmpMemoryAllocator.  If None, per-channel allocator is used.
            DEBUG      : Non-zero → verbose output.

        num_steps : unsigned 16-bit (0–65535 clock ticks per step).
        step_size : signed   16-bit (−32768 … +32767 amplitude units per tick).
        """
        self._check_ch(channel)
        if not (0 <= profile_num <= 7):
            print(f"✗ Invalid profile {profile_num}")
            return False
        if not self.initialized:
            print("⚠ bram_init() has not been called — pointer table may be dirty")

        if allocator is None:
            allocator = self._allocators[channel]

        if DEBUG:
            print(f"\n[AMP_PROFILE] CH{channel} Profile {profile_num}:"
                  f"  {len(on_ramps)} ON, {len(off_ramps)} OFF ramp(s)")

        def _write_ramps(ramps, is_on):
            start_addr = allocator.allocate_ramp_sequence(
                channel, profile_num, is_on, ramps)
            if DEBUG:
                print(f"  {'ON ' if is_on else 'OFF'} @ 0x{start_addr:04X}:")
            addr = start_addr
            for i, (steps, size) in enumerate(ramps):
                if not (0 <= steps <= 65535):
                    print(f"  ✗ Ramp {i}: steps={steps} out of range (0–65535)")
                    return None
                if not (-32768 <= size <= 32767):
                    print(f"  ✗ Ramp {i}: step_size={size} out of range")
                    return None
                word = ((steps & 0xFFFF) << 16) | (size & 0xFFFF)
                if DEBUG:
                    print(f"    [{i}] steps={steps}  size={size:+d}"
                          f"  → 0x{word:08X}")
                self._write_amp_word(channel, addr, word)
                addr += 4
            self._write_amp_word(channel, addr, 0)    # end marker
            return start_addr

        self._freeze()

        on_start  = _write_ramps(on_ramps,  True)
        if on_start is None:
            self._unfreeze()
            return False
        off_start = _write_ramps(off_ramps, False)
        if off_start is None:
            self._unfreeze()
            return False

        on_ptr_addr  = allocator.get_pointer_address(profile_num, True)
        off_ptr_addr = allocator.get_pointer_address(profile_num, False)

        if DEBUG:
            print(f"  Pointers: ON  0x{on_ptr_addr:02X} → 0x{on_start >> 2:04X}"
                  f"  (ramp @ 0x{on_start:04X})")
            print(f"            OFF 0x{off_ptr_addr:02X} → 0x{off_start >> 2:04X}"
                  f"  (ramp @ 0x{off_start:04X})")

        self._write_amp_word(channel, on_ptr_addr,  on_start  >> 2)
        self._write_amp_word(channel, off_ptr_addr, off_start >> 2)

        self._unfreeze()

        if DEBUG:
            print("✓ Amplitude profile configured\n")
        return True

    # -----------------------------------------------------------------------
    # Diagnostics
    # -----------------------------------------------------------------------

    def read_freq_bram_raw(self, channel: int, n_words: int = 16,
                           byte_offset: int = 0) -> list[int]:
        """Read *n_words* 32-bit words from frequency BRAM starting at *byte_offset*."""
        self._check_ch(channel)
        return [self._read_freq_word(channel, byte_offset + i * 4)
                for i in range(n_words)]

    def read_amp_bram_raw(self, channel: int, n_words: int = 16,
                          byte_offset: int = 0) -> list[int]:
        """Read *n_words* 32-bit words from amplitude BRAM starting at *byte_offset*."""
        self._check_ch(channel)
        return [self._read_amp_word(channel, byte_offset + i * 4)
                for i in range(n_words)]

    def dump_pointer_table(self, channel: int) -> None:
        """Print the full ON/OFF pointer table (profiles 0–7) for *channel*."""
        self._check_ch(channel)
        print(f"\n[AMP BRAM CH{channel} ({_AMP_MEM_NAMES[channel]})] Pointer table:")
        alloc = self._allocators[channel]
        for profile in range(8):
            for is_on in (True, False):
                ptr_addr  = alloc.get_pointer_address(profile, is_on)
                ptr_val   = self._read_amp_word(channel, ptr_addr)
                ramp_addr = ptr_val << 2
                trans     = "ON " if is_on else "OFF"
                print(f"  Profile {profile} {trans}: "
                      f"ptr_addr=0x{ptr_addr:02X}  "
                      f"stored=0x{ptr_val:04X}  "
                      f"→ ramp@0x{ramp_addr:04X}")
        print()
