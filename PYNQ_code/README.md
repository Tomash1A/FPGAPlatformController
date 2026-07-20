# PYNQ RF Board Controller

Python drivers for controlling an RF signal generation and acquisition board running on a **Zynq-7020 FPGA** via the [PYNQ](http://www.pynq.io/) framework.

The code runs directly on the Zynq ARM processor (no TCP/PC bridge required) and provides a unified interface for:
- **Clock synthesis** — CDCE62005 via 3-wire SPI
- **DAC control** — DAC3484 ×2 (IQ signal generation)
- **ADC control** — AD9643
- **DDS / BRAM profiles** — frequency, amplitude, and phase profiles loaded into block RAM
- **GPIO & SPI** — low-level board I/O

---

## Hardware Requirements

- Zynq-7020 FPGA board (PYNQ-compatible)
- MicroSD card
- Micro-USB cable
- Ethernet cable

---

## Setup

### 1. Flash the SD Card
Download the PYNQ image *(link coming soon)* and flash it to a MicroSD card using a tool like [Balena Etcher](https://etcher.balena.io/).

### 2. Insert the SD Card
Insert the MicroSD card into its dedicated slot — located **under the micro-USB port** at the bottom of the FPGA board.

### 3. Set Jumpers
Configure the board jumpers as follows:

| Jumper | Setting |
|--------|---------|
| JP1    | 2–3     |
| JP2    | 1–2     |
| JP3    | 1–2     |

### 4. Connect Cables
Connect both the **micro-USB** and **Ethernet** cables from the Zynq board to your computer.

### 5. Configure Network (PC Side)
On your computer, go to **Settings → Network → Ethernet**.  
You should see an *Unidentified Network*. Set the IPv4 parameters manually:

| Parameter       | Value           |
|----------------|-----------------|
| IPv4 Address   | 192.168.2.10    |
| Subnet Mask    | 255.255.255.0   |
| Gateway        | 192.168.2.99    |
| DNS Server     | 127.0.0.1       |

### 6. First-Time Board Configuration (via Serial Terminal)
> **Only required on first use.**

Connect to the board via a serial terminal (e.g. PuTTY) on the **Silicon Labs CP210x USB to UART Bridge** COM port (115200 baud).

Paste the following commands to configure a static IP on the board:

```bash
sudo bash -c 'cat << EOF >> /etc/network/interfaces

auto eth0
iface eth0 inet static
    address 192.168.2.99
    netmask 255.255.255.0
EOF'
```

If prompted for a password: **`xilinx`**

Then reboot the board — either by pressing the **PB button near the jumpers**, or by typing:

```bash
reboot
```

### 7. Open JupyterLab
Once the board has rebooted, you can close the serial terminal. Open your browser and navigate to:

```
http://192.168.2.99:9090
```

Password (if prompted): **`xilinx`**

### 8. Upload the Code
In JupyterLab, create a new folder and copy all `.py` files from this repository into it.

### 9. Run
Open `main.ipynb` and run the notebook.

---

## Project Structure

| File | Description |
|------|-------------|
| `pynq_controller.py` | Top-level unified controller (`PynqController` class) |
| `pynq_bram.py` | BRAM/DDS frequency & amplitude profile controller |
| `pynq_dac.py` | DAC3484 driver (IQ signal generation) |
| `pynq_adc.py` | AD9643 ADC driver |
| `pynq_cdce.py` | CDCE62005 clock synthesizer driver |
| `pynq_dds.py` | DDS tone configuration helpers |
| `pynq_amp_allocator.py` | Amplitude memory allocator |
| `pynq_spi.py` | 3-wire SPI bus driver |
| `pynq_gpio.py` | GPIO utilities |
| `main.ipynb` | Example notebook demonstrating full system usage |
