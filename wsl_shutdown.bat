@echo off
wsl --list --verbose
echo shutting off wsl distros
wsl --shutdown
wsl --list --verbose
echo all done
cmd /k