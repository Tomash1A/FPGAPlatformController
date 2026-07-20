"""
DAC3484 SPI driver for PYNQ (Zynq ARM PS).

Bit-bangs SPI via the shared SPI3WireBus (pynq_spi.py).
Protocol: 24-bit MSB first, CLK idle LOW, active-low chip-select.

  Write : tx = [R/W=0 | 7-bit addr | 16-bit data]  → bus.write()
  Read  : tx = [R/W=1 | 7-bit addr | 0x0000]       → bus.read_dac()
          SDIO switches to input after the 8-bit instruction phase;
          16 data bits are sampled while CLK is HIGH.

Usage:
    bus  = SPI3WireBus(board_ver=2)
    dac1 = DAC3484(bus, dac_num=1)
    dac2 = DAC3484(bus, dac_num=2)
    dac1.dac_init()
"""

import time
from pynq_spi import SPI3WireBus

# ---------------------------------------------------------------------------
# DAC3484 register addresses
# ---------------------------------------------------------------------------
DAC_REG_CONFIG0  = 0x00
DAC_REG_CONFIG1  = 0x01
DAC_REG_CONFIG2  = 0x02
DAC_REG_CONFIG3  = 0x03
DAC_REG_CONFIG4  = 0x04
DAC_REG_CONFIG5  = 0x05
DAC_REG_CONFIG6  = 0x06
DAC_REG_CONFIG7  = 0x07
DAC_REG_CONFIG16 = 0x10
DAC_REG_CONFIG18 = 0x12
DAC_REG_CONFIG19 = 0x13
DAC_REG_CONFIG20 = 0x14
DAC_REG_CONFIG21 = 0x15
DAC_REG_CONFIG22 = 0x16
DAC_REG_CONFIG23 = 0x17
DAC_REG_CONFIG24 = 0x18
DAC_REG_CONFIG25 = 0x19
DAC_REG_CONFIG26 = 0x1A
DAC_REG_CONFIG27 = 0x1B
DAC_REG_CONFIG31 = 0x1F
DAC_REG_CONFIG32 = 0x20
DAC_REG_CONFIG36 = 0x24

# ---------------------------------------------------------------------------
# Bit masks
# ---------------------------------------------------------------------------
SIF_TXENABLE = 0x0001
SIF_SYNC     = 0x0002
QUAD_ENA     = 0x0100
DUAL_ENA     = 0x3000

# ---------------------------------------------------------------------------
# Default register values
# ---------------------------------------------------------------------------
DAC_DEFAULT_CONFIG0  = 0x089F  # bits[11:8]=1000 → 16× interpolation (62.5 Msps × 16 = 1 GHz)
DAC_DEFAULT_CONFIG2  = 0xF002
DAC_DEFAULT_CONFIG27 = 0x0800
DAC_DEFAULT_CONFIG30 = 0x9999   # written to CONFIG31 first (pre-load)
DAC_DEFAULT_CONFIG31 = 0xAA90
DAC_DEFAULT_CONFIG32 = 0xCC00


class DAC3484:
    """
    DAC3484 driver for PYNQ.

    One instance per physical DAC chip.  Pass the shared SPI3WireBus
    and the DAC number (1 or 2) so the correct chip-select is used.

    Example:
        from pynq_spi import SPI3WireBus
        from pynq_dac import DAC3484

        bus  = SPI3WireBus(board_ver=2)
        dac1 = DAC3484(bus, dac_num=1)
        dac2 = DAC3484(bus, dac_num=2)
        dac1.dac_init()
        dac1.set_dac_nco(channel=1, freq_mhz=100)
    """

    DACCLK_HZ = 1_000_000_000  # 1 GHz default — update if CDCE is configured differently

    def __init__(self, bus: SPI3WireBus, dac_num: int):
        if dac_num not in (1, 2):
            raise ValueError(f"dac_num must be 1 or 2, got {dac_num}")
        self._bus = bus
        self.dac_num = dac_num
        self._cs = bus._cs_dac1 if dac_num == 1 else bus._cs_dac2
        print(f"DAC3484 DAC{dac_num} ready (CS_DAC{dac_num})")

    # -----------------------------------------------------------------------
    # Low-level SPI register access
    # -----------------------------------------------------------------------

    def write_register(self, addr: int, data: int) -> None:
        """
        Write 16-bit data to register addr (0x00-0x7F).
        SPI word: [R/W=0 | 7-bit addr | 16-bit data], 24 bits MSB first.
        """
        addr &= 0x7F                                    # R/W=0 → write
        tx = ((addr << 16) | (data & 0xFFFF))
        self._bus.write(self._cs, tx, n_bits=24)

    def read_register(self, addr: int) -> int:
        """
        Read 16-bit data from register addr (0x00-0x7F).
        SPI word: [R/W=1 | 7-bit addr | 0x0000], then samples 16 data bits.
        Returns the 16-bit register value.
        """
        addr &= 0x7F
        tx = (1 << 23) | (addr << 16)                  # R/W=1
        return self._bus.read_dac(self._cs, tx, n_instr=8, n_data=16)

    # -----------------------------------------------------------------------
    # High-level helpers (mirrors DACMixin from PC_code/dac.py)
    # -----------------------------------------------------------------------

    def nco_enable(self) -> bool:
        """Enable NCO mixer in CONFIG2 (sets NCO enable bits → keeps upper byte, lower = 0x52)."""
        val = self.read_register(DAC_REG_CONFIG2)
        self.write_register(DAC_REG_CONFIG2, (val & 0xFF00) | 0x0052)
        return True

    def nco_disable(self) -> bool:
        """Disable NCO mixer in CONFIG2 (clears NCO enable bits → keeps upper byte, lower = 0x02)."""
        val = self.read_register(DAC_REG_CONFIG2)
        self.write_register(DAC_REG_CONFIG2, (val & 0xFF00) | 0x0002)
        return True

    def control_sif_txenable(self, enable: bool) -> None:
        """Set or clear the sif_txenable bit (bit 0) in CONFIG3."""
        val = self.read_register(DAC_REG_CONFIG3)
        if enable:
            val |= SIF_TXENABLE
        else:
            val &= ~SIF_TXENABLE & 0xFFFF
        self.write_register(DAC_REG_CONFIG3, val)

    def create_sif_sync_signal(self) -> None:
        """Pulse the SIF_SYNC bit in CONFIG32 to sync the DAC FIFO."""
        val = self.read_register(DAC_REG_CONFIG32)
        self.write_register(DAC_REG_CONFIG32, val | SIF_SYNC)
        time.sleep(0.002)
        self.write_register(DAC_REG_CONFIG32, val & (~SIF_SYNC & 0xFFFF))
        time.sleep(0.001)

    def configure_dual_or_quad_mode(self, quad_mode: bool) -> None:
        """
        Configure as quad-channel (quad_mode=True) or dual-channel (quad_mode=False).
        Disables output first, configures, then re-enables.
        """
        self.control_sif_txenable(False)

        reg1  = self.read_register(DAC_REG_CONFIG1)
        reg16 = self.read_register(DAC_REG_CONFIG16)

        if quad_mode:
            reg1  |= QUAD_ENA
            reg16 &= ~DUAL_ENA & 0xFFFF
        else:
            reg1  &= ~QUAD_ENA & 0xFFFF
            reg16 |= DUAL_ENA

        self.write_register(DAC_REG_CONFIG1,  reg1)
        self.write_register(DAC_REG_CONFIG16, reg16)
        self.control_sif_txenable(True)

    def configure_dac_default(self) -> bool:
        """
        Write the default register configuration.
        Mirrors DACMixin.configure_dac_default() from PC_code/dac.py.
        """
        print(f"\n[DAC{self.dac_num}] Applying default configuration...")
        regs = [
            (DAC_REG_CONFIG0,  DAC_DEFAULT_CONFIG0),
            (DAC_REG_CONFIG2,  DAC_DEFAULT_CONFIG2),
            (DAC_REG_CONFIG27, DAC_DEFAULT_CONFIG27),
            (DAC_REG_CONFIG31, DAC_DEFAULT_CONFIG30),   # pre-load write
            (DAC_REG_CONFIG31, DAC_DEFAULT_CONFIG31),   # final write
            (DAC_REG_CONFIG32, DAC_DEFAULT_CONFIG32),
            (DAC_REG_CONFIG36, 0x1C00),
        ]
        for reg, val in regs:
            self.write_register(reg, val)

        self.create_sif_sync_signal()
        self.control_sif_txenable(True)
        print(f"✓ DAC{self.dac_num} default configuration complete\n")
        return True

    def set_dac_nco(self, channel: int, freq_mhz: float, phase_deg: float = 0) -> bool:
        """
        Set DAC NCO frequency and phase, apply default config, and enable output.

        Args:
            channel : 1 = DAC_AB pair A/B, 2 = DAC_CD pair C/D
                      (within this DAC instance — not the global 1-4 numbering)
            freq_mhz: Frequency in MHz (0 – DACCLK_HZ/2e6)
            phase_deg: Phase offset in degrees (0–360)
        """
        if channel not in (1, 2):
            print(f"✗ channel must be 1 (AB) or 2 (CD), got {channel}")
            return False
        if not (0 <= phase_deg <= 360):
            print(f"✗ phase_deg {phase_deg}° out of range (0–360)")
            return False

        # Channel → NCO frequency and phase register addresses
        ch_map = {
            1: (DAC_REG_CONFIG20, DAC_REG_CONFIG21, DAC_REG_CONFIG18),  # AB
            2: (DAC_REG_CONFIG22, DAC_REG_CONFIG23, DAC_REG_CONFIG19),  # CD
        }
        reg_lower, reg_upper, reg_phase = ch_map[channel]

        freq_hz       = int(freq_mhz * 1e6)
        phase_word_64 = (freq_hz << 32) // self.DACCLK_HZ
        nco_upper     = (phase_word_64 >> 16) & 0xFFFF
        nco_lower     = phase_word_64 & 0xFFFF
        phase_offset  = int((phase_deg / 360.0) * 65536) & 0xFFFF


        self.write_register(reg_phase, phase_offset)
        self.write_register(reg_lower, nco_lower)
        self.write_register(reg_upper, nco_upper)

        print(f"DAC{self.dac_num} NCO configured: word=0x{nco_upper:04X}{nco_lower:04X}")
        return True

    def read_all_registers(self) -> dict:
        """Read and print all DAC3484 registers 0x00–0x30 and 0x7F."""
        print(f"\n[DAC{self.dac_num}] Reading all registers:")
        result = {}
        for reg in range(0x31):
            val = self.read_register(reg)
            print(f"  0x{reg:02X}: 0x{val:04X}")
            result[reg] = val
        val = self.read_register(0x7F)
        print(f"  0x7F: 0x{val:04X}")
        result[0x7F] = val
        return result

    def dac_init(self) -> bool:
        """Apply default configuration (mirrors DACMixin.dac_init for a single DAC)."""
        return self.configure_dac_default()

    def DAC_SYNC(self) -> bool:
        """
        Sync this DAC: disable output → set quad mode → re-enable.
        Call on both DAC instances for a board-level sync.
        """
        print(f"\n[DAC{self.dac_num}] SYNC...")
        self.control_sif_txenable(False)
        self.configure_dual_or_quad_mode(quad_mode=True)
        self.control_sif_txenable(True)
        print(f"✓ DAC{self.dac_num} SYNC complete\n")
        return True
