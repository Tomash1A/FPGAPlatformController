"""
CDCE62005 clock generator SPI driver for PYNQ (Zynq ARM PS).

Bit-bangs SPI on PS MIO GPIO using pynq.GPIO.
Linux GPIO number = MIO pin number + 512.
Protocol: 32-bit, LSB first, active-low chip-select (LE pin).

Load your overlay before creating this object.
"""

from pynq import GPIO
from pynq_gpio import BiDirPin
import time

PS_GPIO_OFFSET = 512   # Linux sysfs GPIO = MIO_pin + PS_GPIO_OFFSET

# Timing delays (seconds)
_CLK_HALF_PERIOD  = 0.000_050   # 50 µs → ~10 kHz clock (well within 20 MHz max)
_LE_SETUP         = 0.000_100   # 100 µs LE setup/hold around transaction
_INTER_TRANSACTION = 0.005_000  # 1 ms between the two transactions in a read

# MIO pin assignments by board version (matches bsp.c PIN_MAP_V1 / PIN_MAP_V2)
_PIN_MAPS = {
    1: {'CLK': 10, 'MOSI':  9, 'MISO': 12, 'LE': 14, 'CS_DAC1': 13, 'CS_DAC2': 11, 'CS_ADC':  0},
    2: {'CLK': 12, 'MOSI': 10, 'MISO': 11, 'LE': 15, 'CS_DAC1': 13, 'CS_DAC2': 14, 'CS_ADC':  0},
}


def _make_pin(mio_num, direction):
    """Create a pynq.GPIO for a PS MIO pin (Linux GPIO = MIO + 512)."""
    pin = GPIO(PS_GPIO_OFFSET + mio_num, direction)
    return pin


class CDCE62005:
    """
    CDCE62005 SPI driver for PYNQ Jupyter.

    Load the system overlay before instantiating this class.

    Usage:
        from pynq import Overlay
        ol = Overlay('./REV.xsa')

        from pynq_cdce import CDCE62005
        cdce = CDCE62005(board_ver=2)
        cdce.configure('830603208306030183060302EB060003EB06001410000BE504BE09E6BD0037F7')
        cdce.read_all()
    """

    def __init__(self, board_ver=2):
        if board_ver not in _PIN_MAPS:
            raise ValueError(f"board_ver must be 1 or 2, got {board_ver}")
        pins = _PIN_MAPS[board_ver]

        # Deassert ALL chip-selects first — prevents DAC/ADC from driving
        # the shared MISO line while we configure the CDCE.
        self._cs_dac1 = _make_pin(pins['CS_DAC1'], 'out')
        self._cs_dac1.write(1)
        self._cs_dac2 = _make_pin(pins['CS_DAC2'], 'out')
        self._cs_dac2.write(1)
        self._cs_adc  = _make_pin(pins['CS_ADC'],  'out')
        self._cs_adc.write(1)

        # LE: deassert before initialising CLK/MOSI
        self._le   = _make_pin(pins['LE'],   'out')
        self._le.write(1)

        self._clk  = _make_pin(pins['CLK'],  'out')
        self._clk.write(0)
        self._mosi = _make_pin(pins['MOSI'], 'out')
        self._mosi.write(0)

        # MISO — bidirectional; use BiDirPin (raw sysfs) so pynq.GPIO's
        # direction-conflict check never fires when SPI3WireBus also opens MIO11.
        self._miso = BiDirPin(PS_GPIO_OFFSET + pins['MISO'], 'out')
        self._miso.write(0)

        print(f"CDCE62005 ready (board v{board_ver}): "
              f"CLK=MIO{pins['CLK']}, MOSI=MIO{pins['MOSI']}, "
              f"MISO=MIO{pins['MISO']}, LE=MIO{pins['LE']}")
        print(f"  CS_DAC1=MIO{pins['CS_DAC1']}, CS_DAC2=MIO{pins['CS_DAC2']}, "
              f"CS_ADC=MIO{pins['CS_ADC']} — all deasserted")

    # ------------------------------------------------------------------
    # Direction helper (mirrors SPI3WireBus._set_sdio_dir)
    # ------------------------------------------------------------------

    def _set_miso_dir(self, direction):
        """Switch MISO (MIO11) direction ('in' or 'out') — delegates to BiDirPin."""
        self._miso.set_dir(direction)

    # ------------------------------------------------------------------
    # SPI transfer
    # ------------------------------------------------------------------

    def _transfer(self, tx_data, read_mode=False):
        """
        32-bit SPI transfer, LSB first.
        Asserts LE (active-low) for the whole transfer.
        Returns received 32-bit word if read_mode=True, else 0.
        """
        rx_data = 0

        if read_mode:
            self._set_miso_dir('in')    # switch MIO11 to input before sampling

        self._le.write(0)               # assert chip-select (LE active low)
        time.sleep(_LE_SETUP)           # LE setup time before first clock

        for bit in range(32):
            self._mosi.write((tx_data >> bit) & 1)
            time.sleep(_CLK_HALF_PERIOD)
            self._clk.write(1)          # rising edge — CDCE latches SDATA here
            time.sleep(_CLK_HALF_PERIOD)
            if read_mode and self._miso.read():
                rx_data |= (1 << bit)
            self._clk.write(0)          # falling edge

        time.sleep(_LE_SETUP)           # LE hold time after last clock
        self._le.write(1)               # LE rising edge latches data into registers

        if read_mode:
            self._set_miso_dir('out')   # restore to output so SPI3WireBus can use MIO11
        return rx_data

    # ------------------------------------------------------------------
    # CDCE62005 register access
    # ------------------------------------------------------------------

    def write_register(self, addr, data):
        """
        Write 28-bit data to register addr (0-7).
        SPI word: (data[27:0] << 4) | addr[3:0], transmitted LSB first.
        """
        if not (0 <= addr <= 7):
            raise ValueError(f"addr must be 0-7, got {addr}")
        tx = ((int(data) & 0x0FFFFFFF) << 4) | (int(addr) & 0xF)
        self._transfer(tx, read_mode=False)

    def read_register(self, addr):
        """
        Read register addr (0-8) using the 2-step CDCE protocol.
        Note: returns 0 if SDOUT is not wired on the PCB.
        """
        if not (0 <= addr <= 8):
            raise ValueError(f"addr must be 0-8, got {addr}")
        cmd = ((int(addr) & 0xF) << 4) | 0xE
        self._transfer(cmd, read_mode=False)
        time.sleep(_INTER_TRANSACTION)  # 1 ms between read command and data transfer
        rx = self._transfer(0x00000000, read_mode=True)
        return (rx >> 4) & 0x0FFFFFFF

    def read_all(self):
        """Read and print all 9 registers. Returns dict {addr: value}."""
        print("CDCE62005 Register Dump:")
        result = {}
        for addr in range(9):
            val = self.read_register(addr)
            print(f"  reg[{addr}] = 0x{val:07X}")
            result[addr] = val
        return result

    def configure(self, config_string, debug=0):
        """
        Write all 8 registers from a 64-hex-char config string.

        Format: 8 groups of 8 hex chars — [7-char data][1-char addr]
        Same format as ZynqController.ConfigureClockDistributor() on the PC side.

        Args:
            config_string: 64-hex-char configuration string
            debug: Set to 1 to print detailed register writes (default: 0)

        Example:
            '830603208306030183060302EB060003EB06001410000BE504BE09E6BD0037F7'
        """
        if len(config_string) != 64:
            raise ValueError(f"Config string must be 64 hex chars, got {len(config_string)}")

        if debug:
            print("Configuring CDCE62005...")

        for i in range(8):
            group = config_string[i*8:(i+1)*8]
            data  = int(group[:7], 16)
            addr  = int(group[7],  16)
            self.write_register(addr, data)
            time.sleep(_INTER_TRANSACTION)  # 1 ms between register writes
            if debug:
                print(f"  reg[{addr}] <- 0x{data:07X}")

        # Read register 8 to verify configuration
        reg8 = self.read_register(8)

        if reg8 == 0x000000:
            print(f"⚠ WARNING: CDCE reg[8] = 0x{reg8:07X} — possible configuration problem!")
        elif debug:
            print(f"  reg[8] = 0x{reg8:07X} (OK)")

        if debug:
            print("Done.")