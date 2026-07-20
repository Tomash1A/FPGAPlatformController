"""
DAC2 DDS controller for PYNQ.

Simplified architecture: Two separate AXI GPIO blocks
    - DDS_CTRL_AB: controls CH_AB (DDS compiler channel A/B)
    - DDS_CTRL_CD: controls CH_CD (DDS compiler channel C/D)

Each GPIO has two 32-bit channels (accessed via register offsets):
    offset 0x00 : PINC (frequency tuning word) — ch1, LSB of concat
    offset 0x08 : POFF (phase offset word)    — ch2, MSB of concat

xlconcat forms 64-bit config: {POFF, PINC}

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

    dds2.off()
"""

# AXI GPIO register offsets
_PINC = 0x00   # GPIO_DATA  (ch1) — frequency word
_POFF = 0x08   # GPIO2_DATA (ch2) — phase word


# ---------------------------------------------------------------------------
# Driver
# ---------------------------------------------------------------------------

class DAC2_DDS:
    """
    Controls two DDS compilers (A/B and C/D channels independently)
    via separate AXI GPIO blocks (DDS_CTRL_AB and DDS_CTRL_CD).

    Each GPIO block has ch1 (PINC) and ch2 (POFF) that are concatenated
    by xlconcat into a 64-bit configuration word for the DDS compiler.
    """

    def __init__(self, ol, dds_clk_hz: int = 125_000_000):
        """
        Initialize DDS controller.

        Args:
            ol: pynq.Overlay (must be loaded)
            dds_clk_hz: DDS clock frequency in Hz (default 125 MHz)
        """
        self._gpio_ab = ol.ST_0.DDS_CTRL_AB
        self._gpio_cd = ol.ST_0.DDS_CTRL_CD
        self.DDS_CLK_HZ = dds_clk_hz

        # Initialize both channels to zero
        self._gpio_ab.write(_PINC, 0x00000000)
        self._gpio_ab.write(_POFF, 0x00000000)
        self._gpio_cd.write(_PINC, 0x00000000)
        self._gpio_cd.write(_POFF, 0x00000000)

        print(f"DAC2 DDS ready  (CLK = {self.DDS_CLK_HZ/1e6:.1f} MHz)")

    def set(self,
            ab_freq_mhz: float, ab_phase_deg: float,
            cd_freq_mhz: float, cd_phase_deg: float) -> None:
        """
        Configure A/B and C/D channel pairs independently.

        Each write directly sets the DDS configuration (no handshaking).

        Args:
            ab_freq_mhz  : A/B output frequency in MHz
            ab_phase_deg : A/B phase offset in degrees (0–360)
            cd_freq_mhz  : C/D output frequency in MHz
            cd_phase_deg : C/D phase offset in degrees (0–360)
        """
        # Calculate frequency and phase words using current DDS clock
        pinc_ab = int(ab_freq_mhz * 1e6 * (1 << 32) / self.DDS_CLK_HZ) & 0xFFFFFFFF
        poff_ab = int(ab_phase_deg * (1 << 32) / 360) & 0xFFFFFFFF
        pinc_cd = int(cd_freq_mhz * 1e6 * (1 << 32) / self.DDS_CLK_HZ) & 0xFFFFFFFF
        poff_cd = int(cd_phase_deg * (1 << 32) / 360) & 0xFFFFFFFF

        # Write to AB GPIO (xlconcat forms {POFF_AB, PINC_AB})
        self._gpio_ab.write(_PINC, pinc_ab)
        self._gpio_ab.write(_POFF, poff_ab)

        # Write to CD GPIO (xlconcat forms {POFF_CD, PINC_CD})
        self._gpio_cd.write(_PINC, pinc_cd)
        self._gpio_cd.write(_POFF, poff_cd)

        print(f"AB: {ab_freq_mhz:.3f} MHz  {ab_phase_deg:.1f}°  "
              f"PINC=0x{pinc_ab:08X}  POFF=0x{poff_ab:08X}")
        print(f"CD: {cd_freq_mhz:.3f} MHz  {cd_phase_deg:.1f}°  "
              f"PINC=0x{pinc_cd:08X}  POFF=0x{poff_cd:08X}")

    def off(self) -> None:
        """Stop output on all DAC2 channels (sets all to 0 Hz, 0°)."""
        self.set(0.0, 0.0, 0.0, 0.0)
        print("DAC2 DDS off")
