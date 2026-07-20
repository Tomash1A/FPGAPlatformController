"""
Shared 3-wire SPI bus for PYNQ (Zynq ARM PS).

Used by DAC3484 and AD9643 which share the same CLK and bidirectional
SDIO line (MIO11). Each device has its own active-low CS pin.

Protocol: MSB first, CLK idle LOW.
  Write : SDIO is output for the entire 24-bit frame.
  Read  : SDIO is output for the instruction phase, then switched to
          input for the data phase (mid-transfer direction change via sysfs).

DAC3484  : 8-bit instruction  + 16-bit data  (switch after bit 8)
AD9643   : 16-bit instruction + 8-bit data   (switch after bit 16)

The direction switch is handled by BiDirPin (pynq_gpio.py), which writes
directly to the sysfs 'direction' file. Using BiDirPin instead of pynq.GPIO
for SDIO avoids a direction-conflict AttributeError when CDCE62005 also
opens the same MIO11 pin for its MISO line.
"""

from pynq import GPIO
from pynq_gpio import BiDirPin

PS_GPIO_OFFSET = 512   # Linux sysfs GPIO = MIO_pin + PS_GPIO_OFFSET

# MIO pin assignments by board version (matches bsp.c)
_PIN_MAPS = {
    1: {'CLK': 10, 'SDIO': 12, 'CS_DAC1': 13, 'CS_DAC2': 11, 'CS_ADC': 0},
    2: {'CLK': 12, 'SDIO': 11, 'CS_DAC1': 13, 'CS_DAC2': 14, 'CS_ADC': 0},
}


class SPI3WireBus:
    """
    Shared 3-wire SPI bus (SDIO bidirectional).
    Instantiate once and pass to DAC3484 and AD9643 constructors.

    Usage:
        bus = SPI3WireBus(board_ver=2)
        dac1 = DAC3484(bus, dac_num=1)
        adc  = AD9643(bus)
    """

    def __init__(self, board_ver=2):
        if board_ver not in _PIN_MAPS:
            raise ValueError(f"board_ver must be 1 or 2, got {board_ver}")
        pins = _PIN_MAPS[board_ver]

        # CLK — always output, idles LOW
        self._clk = GPIO(PS_GPIO_OFFSET + pins['CLK'], 'out')
        self._clk.write(0)

        # SDIO — bidirectional; use BiDirPin (raw sysfs) so pynq.GPIO's
        # direction-conflict check never fires when CDCE also opens MIO11.
        self._sdio = BiDirPin(PS_GPIO_OFFSET + pins['SDIO'], 'out')
        self._sdio.write(0)

        # CS objects for each device — created here so the bus can
        # deassert all of them at startup (prevents bus fights).
        self._cs_dac1 = GPIO(PS_GPIO_OFFSET + pins['CS_DAC1'], 'out')
        self._cs_dac1.write(1)
        self._cs_dac2 = GPIO(PS_GPIO_OFFSET + pins['CS_DAC2'], 'out')
        self._cs_dac2.write(1)
        self._cs_adc  = GPIO(PS_GPIO_OFFSET + pins['CS_ADC'],  'out')
        self._cs_adc.write(1)

        print(f"SPI3WireBus ready (board v{board_ver}): "
              f"CLK=MIO{pins['CLK']}, SDIO=MIO{pins['SDIO']}")

    # ------------------------------------------------------------------
    # Direction helper
    # ------------------------------------------------------------------

    def _set_sdio_dir(self, direction):
        """Switch SDIO direction ('in' or 'out') — delegates to BiDirPin."""
        self._sdio.set_dir(direction)

    # ------------------------------------------------------------------
    # Core transfer primitives
    # ------------------------------------------------------------------

    def write(self, cs, tx_data, n_bits=24):
        """
        Full write transfer: SDIO output for all n_bits, MSB first.
        cs: pynq.GPIO pin (active-low chip-select).
        """
        self._set_sdio_dir('out')
        cs.write(0)                             # assert CS

        for i in range(n_bits):
            bit_idx = n_bits - 1 - i            # MSB first
            self._sdio.write((tx_data >> bit_idx) & 1)
            self._clk.write(1)                  # rising edge — device samples
            self._clk.write(0)                  # falling edge

        cs.write(1)                             # deassert CS

    def read_dac(self, cs, tx_data, n_instr=8, n_data=16):
        """
        DAC3484 read: instruction phase out (n_instr bits), then SDIO→in,
        data phase sampled on CLK HIGH (DAC drives on falling edge).
        Returns n_data-bit received word.
        """
        total = n_instr + n_data
        self._set_sdio_dir('out')
        cs.write(0)

        # Instruction phase — SDIO output
        for i in range(n_instr):
            bit_idx = total - 1 - i
            self._sdio.write((tx_data >> bit_idx) & 1)
            self._clk.write(1)
            self._clk.write(0)

        # Switch SDIO to input
        self._set_sdio_dir('in')

        # Data phase — sample on CLK HIGH
        rx = 0
        for i in range(n_data):
            bit_idx = n_data - 1 - i
            self._clk.write(1)                  # rising edge
            if self._sdio.read():               # sample while high
                rx |= (1 << bit_idx)
            self._clk.write(0)                  # falling edge

        cs.write(1)
        self._set_sdio_dir('out')               # restore for next write
        return rx

    def read_adc(self, cs, tx_data, n_instr=16, n_data=8):
        """
        AD9643 read: instruction phase out (n_instr bits), then SDIO→in,
        data phase sampled BEFORE CLK HIGH (ADC drives on falling edge).
        Returns n_data-bit received word.
        """
        total = n_instr + n_data
        self._set_sdio_dir('out')
        cs.write(0)

        # Instruction phase — SDIO output
        for i in range(n_instr):
            bit_idx = total - 1 - i
            self._sdio.write((tx_data >> bit_idx) & 1)
            self._clk.write(1)
            self._clk.write(0)

        # Clear SDIO before releasing bus
        self._sdio.write(0)
        # Switch SDIO to input
        self._set_sdio_dir('in')

        # Data phase — sample BEFORE rising edge (ADC drives on falling edge)
        rx = 0
        for i in range(n_data):
            bit_idx = n_data - 1 - i
            if self._sdio.read():               # sample while CLK is still LOW
                rx |= (1 << bit_idx)
            self._clk.write(1)                  # rising edge
            self._clk.write(0)                  # falling edge

        cs.write(1)
        self._set_sdio_dir('out')
        return rx
