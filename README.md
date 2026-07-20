# FPGAPlatformController

This repository contains the FPGA firmware, build scripts, hardware exports, and software for a multi-tone DDS signal generation platform based on the Avnet MicroZed (Xilinx Zynq-7020).

---

## Repository Structure

```
FPGAPlatformController/
├── PYNQ/                  Python/PYNQ software and exported hardware (.xsa) files
├── VIVADO- PROJECT BUILDER SCRIPT/
│   ├── DAC1ST_DAC2MT_build/     Vivado build script — Multi-Tone (MT) design
│   └── projectHW_ADC_build/     Vivado build script — ADC input design
├── ALTIUM- UPDATED PCB DESIGN/  PCB schematics and layouts
├── DATASHEETS AND DOCUMENTS/    Hardware datasheets and documentation
└── docs/                        Block design diagrams (PNG/PDF)
```

---

## Block Design Documentation

### Multi-Tone (MT) Design
Block diagram of the **Multi-Tone (MT)** design. This variant uses external control signals (`ProfileAddr`, `AM_onoff`) driven from an Arduino via the P1 connector to select frequency profiles and gate the output. The ADC is put in sleep mode in this configuration, freeing the shared pins for external control.

![MT Block Design](docs/projectHW_wMT.PNG)

### ADC Input Design
Block diagram of the **ADC input** design. This variant uses the same P1 connector pins as LVDS_25 ADC data inputs. The `adc_capture` module replaces the SelectIO wizard to support DDR capture across multiple I/O banks (Banks 13, 34, 35) using a BUFG-driven global clock.

![ADC Block Design](docs/projectHW_wADC.PNG)

---

## Building the Vivado Projects

Both designs target the **Avnet MicroZed with Zynq xc7z020clg400-1** and require **Vivado 2021.1**.

### Multi-Tone design
```
cd VIVADO- PROJECT BUILDER SCRIPT/DAC1ST_DAC2MT_build
build.bat
```

### ADC input design
```
cd VIVADO- PROJECT BUILDER SCRIPT/projectHW_ADC_build
build.bat
```

After the script completes, open `projectHW/projectHW.xpr` in Vivado. Then:
1. Open the **Block Design**
2. Right-click on the block design and select **Create HDL Wrapper**
3. Set the wrapper as top module
4. Click **Generate Bitstream**

---

## PYNQ Software

See [`PYNQ/README.md`](PYNQ/README.md) for board setup and software usage instructions.

---

## Hardware Exports

The `PYNQ/` folder contains the exported hardware description files for use with the PYNQ framework:
- `PYNQ/DAC1ST125MHz_DAC2MT125MHz.xsa` — Multi-Tone design
- `PYNQ/ADC_DAC12ST_DATACLK125MHz.xsa` — ADC input design
