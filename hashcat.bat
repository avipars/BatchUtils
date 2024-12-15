@echo off 
REM where this is the directory of hashcat
pushd "C:\Program Files\hashcat"
hashcat.exe %*
popd