"""
DAC2 DDS controller for PYNQ.

Hardware:
    One AXI GPIO — DAC2_CTRL (0x4120_0000) — feeds dds_config_ctrl,
    which drives S_AXIS_CONFIG of dds_compiler_0.

    AXI GPIO layout:
        ch1  GPIO_DATA  (32-bit, offset 0x00) : data word
        ch2  GPIO2_DATA ( 3-bit, offset 0x08) : strobe handshake

    Python sends a 4-write burst (data + strobe) per word, in order:
        strobe=0x1 → PINC_AB  (A/B frequency word)
        strobe=0x2 → POFF_AB  (A/B phase word)
        strobe=0x3 → PINC_CD  (C/D frequency word)
        strobe=0x4 → POFF_CD  (C/D phase word)

    The VHDL state machine captures all 4 words, then fires two consecutive
    S_AXIS_CONFIG transactions to the DDS compiler:
        Transaction 0 (CHAN_0, A/B):  {POFF_AB, PINC_AB}  tlast=0
        Transaction 1 (CHAN_1, C/D):  {POFF_CD, PINC_CD}  tlast=1

Frequency tuning word (32-bit):
    PINC = freq_hz * 2^32 / DDS_CLK_HZ

Phase offset word (32-bit):
    POFF = phase_deg * 2^32 / 360

Usage:
    from pynq import Overlay
    ol = Overlay('./REV.xsa')

    from pynq_dds import DAC2_DDS
    dds2 = DAC2_DDS(ol)

    dds2.set(ab_freq_mhz=5.0,  ab_phase_deg=0.0,
             cd_freq_mhz=10.0, cd_phase_deg=0.0)

    dds2.set(ab_freq_mhz=5.0, ab_phase_deg=0.0,
             cd_freq_mhz=5.0,  cd_phase_deg=90.0)

    dds2.off()
"""

DDS_CLK_HZ = 62_500_000   # 62.5 MHz PL fabric clock

# AXI GPIO register offsets
_DATA_REG   = 0x00   # GPIO_DATA  — 32-bit data word
_DATA_TRI   = 0x04   # GPIO_TRI   — 0 = output
_STROBE_REG = 0x08   # GPIO2_DATA — 3-bit strobe handshake
_STROBE_TRI = 0x0C   # GPIO2_TRI  — 0 = output

# Strobe values (must match VHDL constants)
_STROBE_W0 = 0x1   # PINC_AB
_STROBE_W1 = 0x2   # POFF_AB
_STROBE_W2 = 0x3   # PINC_CD
_STROBE_W3 = 0x4   # POFF_CD


# ---------------------------------------------------------------------------
# Word calculations
# ---------------------------------------------------------------------------

def _pinc(freq_hz: float) -> int:
    """32-bit frequency tuning word: freq_hz * 2^32 / DDS_CLK_HZ"""
    return int(freq_hz * (1 << 32) / DDS_CLK_HZ) & 0xFFFFFFFF


def _poff(phase_deg: float) -> int:
    """32-bit phase offset word: phase_deg * 2^32 / 360"""
    return int(phase_deg * (1 << 32) / 360) & 0xFFFFFFFF


# ---------------------------------------------------------------------------
# Driver
# ---------------------------------------------------------------------------

class DAC2_DDS:
    """
    Controls dds_compiler_0 (A/B and C/D channel pairs independently)
    via DAC2_CTRL AXI GPIO and the dds_config_ctrl VHDL state machine.
    """

    def __init__(self, ol):
        self._ip = ol.ST_0.DAC2_CTRL
        self._ip.write(_DATA_TRI,   0x00000000)   # ch1: all output
        self._ip.write(_STROBE_TRI, 0x00000000)   # ch2: all output
        self._ip.write(_DATA_REG,   0x00000000)
        self._ip.write(_STROBE_REG, 0x00000000)
        print(f"DAC2 DDS ready  (CLK = {DDS_CLK_HZ/1e6:.1f} MHz)")

    def set(self,
            ab_freq_mhz: float, ab_phase_deg: float,
            cd_freq_mhz: float, cd_phase_deg: float) -> None:
        """
        Configure A/B and C/D channel pairs independently.

        Sends a 4-word burst to the VHDL state machine:
            word 0 (strobe 0x1) : PINC_AB
            word 1 (strobe 0x2) : POFF_AB
            word 2 (strobe 0x3) : PINC_CD
            word 3 (strobe 0x4) : POFF_CD

        The VHDL fires both DDS transactions after receiving word 3.

        Args:
            ab_freq_mhz  : A/B output frequency in MHz
            ab_phase_deg : A/B phase offset in degrees (0–360)
            cd_freq_mhz  : C/D output frequency in MHz
            cd_phase_deg : C/D phase offset in degrees (0–360)
        """
        pinc_ab = _pinc(ab_freq_mhz * 1e6)
        poff_ab = _poff(ab_phase_deg)
        pinc_cd = _pinc(cd_freq_mhz * 1e6)
        poff_cd = _poff(cd_phase_deg)

        # Word 0 — PINC_AB
        self._ip.write(_DATA_REG,   pinc_ab)
        self._ip.write(_STROBE_REG, _STROBE_W0)

        # Word 1 — POFF_AB
        self._ip.write(_DATA_REG,   poff_ab)
        self._ip.write(_STROBE_REG, _STROBE_W1)

        # Word 2 — PINC_CD
        self._ip.write(_DATA_REG,   pinc_cd)
        self._ip.write(_STROBE_REG, _STROBE_W2)

        # Word 3 — POFF_CD  (triggers VHDL to fire both DDS transactions)
        self._ip.write(_DATA_REG,   poff_cd)
        self._ip.write(_STROBE_REG, _STROBE_W3)

        # Clear GPIO after burst so stale data never leaks into the next transaction
        self._ip.write(_DATA_REG,   0x00000000)
        self._ip.write(_STROBE_REG, 0x00000000)

        print(f"  AB: {ab_freq_mhz:.3f} MHz  {ab_phase_deg:.1f}°"
              f"  PINC=0x{pinc_ab:08X}  POFF=0x{poff_ab:08X}")
        print(f"  CD: {cd_freq_mhz:.3f} MHz  {cd_phase_deg:.1f}°"
              f"  PINC=0x{pinc_cd:08X}  POFF=0x{poff_cd:08X}")

    def off(self) -> None:
        """Stop output on all DAC2 channels (sets all to 0 Hz, 0°)."""
        self.set(0.0, 0.0, 0.0, 0.0)
        print("  DAC2 DDS off")
