REM needs to be ran as admin
manage-bde -status C: 
REM this is for the C drive and it just reports the status (doesn't change anything)

REM this shuts off bitlocker on C drive (put in a different drive letter if you like)
manage-bde -off
REM it takes some time

