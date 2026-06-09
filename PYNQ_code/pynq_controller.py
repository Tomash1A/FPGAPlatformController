"""
PynqController — PYNQ-native replacement for ZynqController.

Runs directly on the Zynq-7020 ARM PS (no TCP).
Combines CDCE62005 (clock), DAC3484 ×2, AD9643, and BRAM profile control
into one façade that mirrors the ZynqController API used in PC_code/main.py.

Usage:
    from pynq import Overlay
    ol = Overlay('./projectHW_MT.xsa')

    from pynq_controller import PynqController
    zynq = PynqController(ol, board_ver=2)
    zynq.configure_clock('8340032083400301EB060302680603036806031410000BE504BE09F6BD0037F7')
    zynq.dac_init()
    zynq.adc_init()
    zynq.bram_init()

BRAM channel mapping (DAC1 only in current XSA):
    channel 1  →  MT_0  (DAC1 AB pair — IQ channel 1)
    channel 2  →  MT_1  (DAC1 CD pair — IQ channel 2)

profile_base_addr and AM_onoff are driven externally via FPGA pins.
Python only loads frequency and amplitude profiles into the BRAMs.
"""

from pynq_cdce import CDCE62005
from pynq_spi  import SPI3WireBus
from pynq_dac  import (DAC3484,
                        DAC_REG_CONFIG18, DAC_REG_CONFIG19,
                        DAC_REG_CONFIG20, DAC_REG_CONFIG21,
                        DAC_REG_CONFIG22, DAC_REG_CONFIG23)
from pynq_adc  import AD9643
from pynq_bram import BRAMController
from pynq_amp_allocator import AmpMemoryAllocator


class PynqController:
    """
    Unified controller for the Zynq RF board (PYNQ-native).

    API mirrors ZynqController from PC_code/zynq_lib.py, but every call
    goes directly to the hardware via GPIO bit-bang — no TCP socket needed.

    Attributes
    ----------
    board_ver : int
        PCB revision (1 or 2).  Selects the correct MIO pin map.
    cdce : CDCE62005
        Clock distributor driver.
    bus  : SPI3WireBus
        Shared 3-wire SPI bus for DAC and ADC.
    dac1, dac2 : DAC3484
        Individual DAC drivers.
    adc  : AD9643
        ADC driver.
    DACCLK_HZ : int
        DAC clock frequency in Hz. Update after configuring the CDCE so that
        NCO frequency calculations remain accurate.
    """

    DACCLK_HZ = 1_000_000_000  # 1 GHz default — update if CDCE config changes

    def __init__(self, ol, board_ver: int = 2):
        """
        Args:
            ol        : pynq.Overlay — must be loaded before instantiation.
                        Used to resolve MT_0/MT_1 BRAM memory aliases.
            board_ver : PCB revision (1 or 2).
        """
        self.board_ver = board_ver

        print(f"\n[PynqController] Initializing (board v{board_ver})...")

        # CDCE62005 uses its own 4-wire SPI (MOSI/MISO separate)
        self.cdce = CDCE62005(board_ver=board_ver)

        # Shared 3-wire SPI bus for DAC3484 and AD9643
        self.bus  = SPI3WireBus(board_ver=board_ver)
        self.dac1 = DAC3484(self.bus, dac_num=1)
        self.dac2 = DAC3484(self.bus, dac_num=2)
        self.adc  = AD9643(self.bus)

        # BRAM profile controller — resolves MT_0/MT_1 aliases from overlay
        self.bram = BRAMController(ol)

        print("✓ PynqController ready\n")

    # -----------------------------------------------------------------------
    # Clock distributor
    # -----------------------------------------------------------------------

    def configure_clock(self, config_string: str) -> bool:
        """
        Configure CDCE62005 from a 64-hex-char config string.
        Same format as ZynqController.ConfigureClockDistributor().

        Example (DAC 100 MHz, ADC 100 MHz):
            '830603208306030183060302EB060003EB06001410000BE504BE09E6BD0037F7'
        """
        self.cdce.configure(config_string)
        return True

    # kept as alias so old code that calls ConfigureClockDistributor() still works
    ConfigureClockDistributor = configure_clock

    # -----------------------------------------------------------------------
    # DAC control
    # -----------------------------------------------------------------------

    def dac_init(self) -> bool:
        """
        Apply default register configuration to both DACs.
        Mirrors ZynqController.dac_init().
        """
        print("\n[DAC] Initializing DAC1 and DAC2...")
        ok1 = self.dac1.dac_init()
        ok2 = self.dac2.dac_init()
        return ok1 and ok2

    def DAC_SYNC(self) -> bool:
        """
        Sync both DACs: disable → quad mode → re-enable.
        Mirrors ZynqController.DAC_SYNC().
        """
        print("\n[DAC] Syncing DAC1 and DAC2...")
        self.dac1.DAC_SYNC()
        self.dac2.DAC_SYNC()
        print("✓ DAC SYNC complete\n")
        return True

    def set_dac_nco(self, channel: int, freq_mhz: float, phase_deg: float = 0) -> bool:
        """
        Set NCO frequency and phase on one of the four DAC output channels.

        Global channel mapping (matches ZynqController.set_dac_nco):
            1 → DAC1 AB-pair
            2 → DAC1 CD-pair
            3 → DAC2 AB-pair
            4 → DAC2 CD-pair

        Args:
            channel  : 1–4
            freq_mhz : Frequency in MHz
            phase_deg: Phase offset in degrees (0–360)
        """
        if channel not in (1, 2, 3, 4):
            print(f"✗ channel must be 1-4, got {channel}")
            return False

        # Map global channel to (dac_instance, local_channel)
        ch_map = {
            1: (self.dac1, 1),   # DAC1 AB
            2: (self.dac1, 2),   # DAC1 CD
            3: (self.dac2, 1),   # DAC2 AB
            4: (self.dac2, 2),   # DAC2 CD
        }
        dac, local_ch = ch_map[channel]

        # Propagate DACCLK_HZ in case the user changed it after __init__
        dac.DACCLK_HZ = self.DACCLK_HZ

        return dac.set_dac_nco(channel=local_ch, freq_mhz=freq_mhz, phase_deg=phase_deg)

    def write_dac_register(self, dac_num: int, reg: int, data: int) -> bool:
        """Write a DAC3484 register directly (bypass high-level helpers)."""
        dac = self.dac1 if dac_num == 1 else self.dac2
        dac.write_register(reg, data)
        return True

    def read_dac_register(self, dac_num: int, reg: int):
        """Read a DAC3484 register directly."""
        dac = self.dac1 if dac_num == 1 else self.dac2
        return dac.read_register(reg)

    def read_all_dac_registers(self, dac_num: int) -> dict:
        """Dump all DAC registers to stdout and return as dict."""
        dac = self.dac1 if dac_num == 1 else self.dac2
        return dac.read_all_registers()

    # -----------------------------------------------------------------------
    # ADC control
    # -----------------------------------------------------------------------

    def adc_init(self) -> bool:
        """
        Initialize AD9643 with default settings.
        Verifies chip ID, configures output mode, latches registers.
        Mirrors ZynqController.adc_init().
        """
        return self.adc.adc_init()

    def adc_verify_chip_id(self) -> bool:
        """Verify AD9643 chip ID (0x82). Mirrors ZynqController.adc_verify_chip_id()."""
        return self.adc.verify_chip_id()

    def adc_read_register(self, addr: int) -> int:
        """Read a single AD9643 register. Mirrors ZynqController.adc_read_register()."""
        return self.adc.read_register(addr)

    def adc_write_register(self, addr: int, data: int) -> bool:
        """Write a single AD9643 register (does NOT auto-latch)."""
        self.adc.write_register(addr, data)
        return True

    def adc_read_all_registers(self) -> dict:
        """Dump key ADC registers to stdout and return as dict."""
        return self.adc.read_all_registers()

    # -----------------------------------------------------------------------
    # CDCE register access
    # -----------------------------------------------------------------------

    def write_cdce_register(self, addr: int, data: int) -> bool:
        """Write a single CDCE62005 register."""
        self.cdce.write_register(addr, data)
        return True

    def read_cdce_register(self, addr: int):
        """Read a single CDCE62005 register. Returns 28-bit value."""
        return self.cdce.read_register(addr)

    # -----------------------------------------------------------------------
    # BRAM profile control  (mirrors BRAMMixin from PC_code/bram.py)
    # -----------------------------------------------------------------------

    def _bram_check(self) -> bool:
        """Return True if BRAM controller is available, print error otherwise."""
        if self.bram is None:
            print("✗ BRAM controller not initialized."
                  "  Instantiate PynqController(enable_bram=True)"
                  " after adding BRAMs to the XSA.")
            return False
        return True

    def bram_init(self) -> bool:
        """
        Clear the amplitude BRAM pointer tables and reset all allocators.
        Call once after overlay load (before any set_amp_profile calls).
        Mirrors ZynqController.bram_init().
        """
        if not self._bram_check():
            return False
        return self.bram.bram_init()

    def set_freq_profile(self, channel: int, profile_num: int,
                         data: list, DEBUG: int = 0) -> bool:
        """
        Write a frequency profile to BRAM.

        Args:
            channel    : 1–4  (1=DAC1 AB, 2=DAC1 CD, 3=DAC2 AB, 4=DAC2 CD)
            profile_num: 0–7
            data       : [(amp, freq_mhz, phase_deg), …]  up to 32 signals
            DEBUG      : Non-zero → verbose encoding printout.

        Returns True if all signals written.
        Mirrors ZynqController.set_freq_profile().
        """
        if not self._bram_check():
            return False
        return self.bram.set_freq_profile(channel, profile_num, data, DEBUG)

    def get_freq_profile(self, channel: int, profile_num: int,
                         max_signals: int = 32) -> list | None:
        """
        Read a frequency profile back from BRAM.

        Returns [(amplitude, freq_mhz, phase_deg), …] or None on error.
        Mirrors ZynqController.get_freq_profile().
        """
        if not self._bram_check():
            return None
        return self.bram.get_freq_profile(channel, profile_num, max_signals)

    def set_amp_profile(self, channel: int, profile_num: int,
                        on_ramps: list, off_ramps: list,
                        allocator: AmpMemoryAllocator | None = None,
                        DEBUG: int = 0) -> bool:
        """
        Write an amplitude ramp profile to BRAM.

        Args:
            channel    : 1–4
            profile_num: 0–7
            on_ramps   : [(num_steps, step_size), …] for ON transition
            off_ramps  : [(num_steps, step_size), …] for OFF transition
            allocator  : AmpMemoryAllocator (optional; per-channel allocator
                         used automatically when None).
            DEBUG      : Non-zero → verbose output.

        Mirrors ZynqController.set_amp_profile().
        """
        if not self._bram_check():
            return False
        return self.bram.set_amp_profile(channel, profile_num,
                                         on_ramps, off_ramps,
                                         allocator, DEBUG)

    def get_amp_allocator(self, channel: int = 1) -> AmpMemoryAllocator | None:
        """
        Return the AmpMemoryAllocator for *channel*.
        Mirrors ZynqController.get_amp_allocator().
        """
        if not self._bram_check():
            return None
        return self.bram.get_amp_allocator(channel)

    def reset_amp_memory(self, channel: int | None = None) -> None:
        """
        Reset amplitude memory allocator(s) and clear BRAM pointer table(s).

        Args:
            channel: If given, reset only that channel; otherwise reset all.

        Mirrors ZynqController.reset_amp_memory().
        """
        if not self._bram_check():
            return
        self.bram.reset_amp_memory(channel)

