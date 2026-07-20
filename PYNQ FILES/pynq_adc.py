"""
AD9643 SPI driver for PYNQ (Zynq ARM PS).

Bit-bangs SPI via the shared SPI3WireBus (pynq_spi.py).
Protocol: 24-bit MSB first, CLK idle LOW, active-low chip-select.

  Write : tx = [bit23=0 | bit22:21=00 | bit20:8=addr[12:0] | bit7:0=data]
               → bus.write(), SDIO output for all 24 bits.
  Read  : tx = [bit23=1 | bit22:21=00 | bit20:8=addr[12:0] | bit7:0=0]
               → bus.read_adc(), SDIO output for 16-bit instruction,
                 then input for 8-bit data sampled BEFORE CLK rising edge.

After any write sequence, write 0x01 to the Transfer register (0xFF) to
latch shadow registers into active configuration (AD9643 requirement).

Usage:
    bus = SPI3WireBus(board_ver=2)
    adc = AD9643(bus)
    if adc.verify_chip_id():
        adc.adc_init()
"""

from pynq_spi import SPI3WireBus

# ---------------------------------------------------------------------------
# AD9643 register addresses
# ---------------------------------------------------------------------------
ADC_REG_SPI_CONFIG    = 0x000
ADC_REG_CHIP_ID       = 0x001
ADC_REG_CHIP_GRADE    = 0x002
ADC_REG_CHANNEL_IDX   = 0x005
ADC_REG_POWER_MODES   = 0x008
ADC_REG_GLOBAL_CLK    = 0x009
ADC_REG_CLK_DIVIDE    = 0x00B
ADC_REG_TEST_MODE     = 0x00D
ADC_REG_OFFSET_ADJUST = 0x010
ADC_REG_OUTPUT_MODE   = 0x014
ADC_REG_OUTPUT_ADJUST = 0x015
ADC_REG_CLK_PHASE     = 0x016
ADC_REG_DCO_DELAY     = 0x017
ADC_REG_INPUT_SPAN    = 0x018
ADC_REG_SYNC_CTRL     = 0x03A
ADC_REG_TRANSFER      = 0x0FF

# ---------------------------------------------------------------------------
# Default register values
# ---------------------------------------------------------------------------
ADC_CHANNEL_BOTH        = 0x03   # select both channels A and B
ADC_POWER_NORMAL        = 0x00   # all channels powered on
ADC_DEFAULT_OUTPUT_MODE = 0x05   # LVDS, 1.8 V
ADC_SPAN_1_75VPP        = 0x00   # ±0.875 V input span
ADC_TEST_OFF            = 0x00   # no test pattern
ADC_EXPECTED_CHIP_ID    = 0x82   # AD9643 chip ID

# Key registers to dump in read_all_registers()
KEY_REGISTERS = [
    ADC_REG_CHIP_ID, ADC_REG_CHIP_GRADE, ADC_REG_CHANNEL_IDX,
    ADC_REG_POWER_MODES, ADC_REG_GLOBAL_CLK, ADC_REG_CLK_DIVIDE,
    ADC_REG_TEST_MODE, ADC_REG_OFFSET_ADJUST, ADC_REG_OUTPUT_MODE,
    ADC_REG_OUTPUT_ADJUST, ADC_REG_CLK_PHASE, ADC_REG_DCO_DELAY,
    ADC_REG_INPUT_SPAN, ADC_REG_SYNC_CTRL,
]

# SPI constants
_ADC_READ_BIT = 0x8000          # bit 15 of 16-bit instruction word (= bit 23 of 24-bit frame)


class AD9643:
    """
    AD9643 dual-channel ADC driver for PYNQ.

    Example:
        from pynq_spi import SPI3WireBus
        from pynq_adc import AD9643

        bus = SPI3WireBus(board_ver=2)
        adc = AD9643(bus)
        if adc.verify_chip_id():
            adc.adc_init()
    """

    def __init__(self, bus: SPI3WireBus):
        self._bus = bus
        self._cs  = bus._cs_adc
        print("AD9643 ADC ready")

    # -----------------------------------------------------------------------
    # Low-level SPI register access
    # -----------------------------------------------------------------------

    def write_register(self, addr: int, data: int) -> None:
        """
        Write 8-bit data to register addr (0x000–0x1FFF).
        SPI frame: [bit23=0][bits22:21=00][bits20:8=addr[12:0]][bits7:0=data], 24-bit MSB first.
        Note: call latch_transfer() after any write sequence to commit changes.
        """
        tx = ((addr & 0x1FFF) << 8) | (data & 0xFF)
        self._bus.write(self._cs, tx, n_bits=24)

    def read_register(self, addr: int) -> int:
        """
        Read 8-bit data from register addr.
        SPI frame: [bit23=1][bits22:21=00][bits20:8=addr[12:0]][bits7:0=0], 24-bit MSB first.
        SDIO is output for bits 23:8 (16 bits), then input for bits 7:0 (8 bits).
        Data is sampled BEFORE each CLK rising edge (AD9643 drives on falling edge).
        Returns the 8-bit register value.
        """
        tx = ((_ADC_READ_BIT | (addr & 0x1FFF)) << 8)
        return self._bus.read_adc(self._cs, tx, n_instr=16, n_data=8)

    def latch_transfer(self) -> None:
        """
        Write 0x01 to the Transfer register (0xFF) to latch shadow registers.
        Must be called after any write sequence for changes to take effect.
        """
        self.write_register(ADC_REG_TRANSFER, 0x01)

    # -----------------------------------------------------------------------
    # High-level methods (mirrors ADCMixin from PC_code/adc.py)
    # -----------------------------------------------------------------------

    def verify_chip_id(self) -> bool:
        """
        Read Chip ID register (0x01) and verify it equals 0x82.
        Returns True if correct, False otherwise.
        """
        chip_id = self.read_register(ADC_REG_CHIP_ID)
        ok = (chip_id == ADC_EXPECTED_CHIP_ID)
        status = "OK" if ok else "MISMATCH"
        print(f"  AD9643 Chip ID: 0x{chip_id:02X} "
              f"(expected 0x{ADC_EXPECTED_CHIP_ID:02X}) [{status}]")
        return ok

    def adc_init(self) -> bool:
        """
        Initialize AD9643 with default settings.
        Verifies chip ID, configures output mode and input span, latches all registers.
        Returns True if successful, False if chip ID mismatch.
        """
        print("\n[ADC] Initializing AD9643...")
        if not self.verify_chip_id():
            print("✗ ADC init aborted: chip ID mismatch")
            return False

        self.write_register(ADC_REG_CHANNEL_IDX, ADC_CHANNEL_BOTH)
        self.write_register(ADC_REG_POWER_MODES,  ADC_POWER_NORMAL)
        self.write_register(ADC_REG_OUTPUT_MODE,  ADC_DEFAULT_OUTPUT_MODE)
        self.write_register(ADC_REG_INPUT_SPAN,   ADC_SPAN_1_75VPP)
        self.write_register(ADC_REG_TEST_MODE,    ADC_TEST_OFF)
        self.latch_transfer()

        print("✓ ADC initialized\n")
        return True

    def read_all_registers(self) -> dict:
        """Read and print all key AD9643 configuration registers."""
        print("\n[ADC] Reading key registers:")
        result = {}
        for reg in KEY_REGISTERS:
            val = self.read_register(reg)
            print(f"  0x{reg:03X}: 0x{val:02X}")
            result[reg] = val
        return result
