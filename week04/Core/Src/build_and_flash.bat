@echo off

echo Building...
cmake --build build
if errorlevel 1 exit /b 1

echo Flashing...
STM32_Programmer_CLI -c port=SWD -d build\week04.elf -rst
if errorlevel 1 exit /b 1

echo.
echo Done!
pause