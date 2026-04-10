@echo off
title System Repair Tool

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] This script must be run as Administrator.
    echo Right-click the file and select "Run as administrator".
    echo.
    pause
    exit /b
)

echo =====================================
echo   Running as Administrator
echo =====================================
echo.

:: Run System File Checker
echo [1/3] Running SFC scan...
sfc /scannow
echo.

:: Run DISM ScanHealth
echo [2/3] Running DISM ScanHealth...
DISM /Online /Cleanup-Image /ScanHealth
echo.

:: Run DISM RestoreHealth
echo [3/3] Running DISM RestoreHealth...
DISM /Online /Cleanup-Image /RestoreHealth
echo.

echo =====================================
echo   All operations completed
echo =====================================
echo.

pause
