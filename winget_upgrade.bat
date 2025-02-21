@echo off
echo Starting the app upgrade process...

REM -h for 
winget upgrade --all -h 
REM h is for silent install, all is to upgrade all packages available
echo Upgrade process completed.

cmd /k
