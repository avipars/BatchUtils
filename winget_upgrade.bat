@echo off
echo Starting the app upgrade process...

REM -h for 
winget upgrade --all -h
echo Upgrade process completed.

cmd /k