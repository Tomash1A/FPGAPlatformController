@echo off
REM -----------------------------------------------------------------------
REM  build.bat  —  Creates the projectHW Vivado project
REM  Requirements: Vivado 2021.1 must be on the system PATH.
REM                Run from the Vivado 2021.1 command prompt, or add
REM                C:\Xilinx\Vivado\2021.1\bin to your PATH first.
REM -----------------------------------------------------------------------

setlocal
set "SCRIPT_DIR=%~dp0"

where vivado >nul 2>&1
if errorlevel 1 (
    echo ERROR: vivado not found on PATH.
    echo        Open the Vivado 2021.1 command prompt and run this script from there,
    echo        or add C:\Xilinx\Vivado\2021.1\bin to your system PATH.
    pause
    exit /b 1
)

echo Building projectHW ...
vivado -mode batch -source "%SCRIPT_DIR%build.tcl" -tclargs "%SCRIPT_DIR%"

echo.
echo Done. Open projectHW\projectHW.xpr in Vivado, then click Generate Bitstream.
pause
