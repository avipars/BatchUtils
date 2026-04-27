@echo off
title Network Report

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

:: Run netsh
echo Running "netsh wlan show wlanreport"
netsh wlan show wlanreport
echo.


pause
