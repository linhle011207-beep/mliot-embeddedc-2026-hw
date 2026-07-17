@echo off

echo 
if exist build (
    rmdir /s /q build
)

echo 
mkdir build

echo 
cmake -S . -B build -G Ninja

echo
ninja -C build

echo 
STM32_Programmer_CLI -c port=SWD -w build/app_firmware.bin 0x08000000 -rst

echo 
pause