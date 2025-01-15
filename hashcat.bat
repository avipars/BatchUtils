@echo off 
REM where this is the directory of hashcat
REM useful for when we are running hashcat and are pointing the SRC/DEST files to a folder on a different windows drive
pushd "C:\Program Files\hashcat"
hashcat.exe %*
popd
