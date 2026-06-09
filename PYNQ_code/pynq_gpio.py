"""
BiDirPin — raw sysfs GPIO for pins that must change direction at runtime.

Bypasses pynq.GPIO's global direction-conflict check, so the same physical
MIO pin can be independently opened by two drivers (e.g. CDCE62005 MISO
and SPI3WireBus SDIO both on MIO11) without raising AttributeError.

All other pins still use pynq.GPIO as normal.  BiDirPin has the same
read() / write() interface, so it is a drop-in replacement.
"""

import os

_EXPORT_PATH = '/sys/class/gpio/export'


class BiDirPin:
    """
    Raw sysfs bidirectional GPIO.

    read() / write() interface matches pynq.GPIO.
    Direction is changed at any time via set_dir('in' | 'out').
    """

    def __init__(self, gpio_num: int, initial_dir: str = 'out'):
        self._num      = gpio_num
        self._dir      = None           # will be set by set_dir() below
        self._dir_path = f'/sys/class/gpio/gpio{gpio_num}/direction'
        self._val_path = f'/sys/class/gpio/gpio{gpio_num}/value'

        # Export the pin through sysfs if it hasn't been exported yet.
        # (pynq.GPIO.write() / GPIO() normally does this implicitly.)
        if not os.path.exists(f'/sys/class/gpio/gpio{gpio_num}'):
            with open(_EXPORT_PATH, 'w') as f:
                f.write(str(gpio_num))

        self.set_dir(initial_dir)

    # ------------------------------------------------------------------

    def set_dir(self, direction: str) -> None:
        """Switch direction ('in' or 'out') — no-op if already correct."""
        if direction == self._dir:
            return
        with open(self._dir_path, 'w') as f:
            f.write(direction)
        self._dir = direction

    def write(self, val: int) -> None:
        with open(self._val_path, 'w') as f:
            f.write(str(int(val)))

    def read(self) -> int:
        with open(self._val_path, 'r') as f:
            return int(f.read().strip())
