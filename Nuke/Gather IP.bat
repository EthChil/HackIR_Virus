@echo off
FOR /L %i IN (1,1,254) DO ping -n 1 192.168.10.%i | FIND /i "Reply">>c:\ipaddresses.txt

set lines=0

for /F "tokens=*" %%A in (ipaddresses.txt) do CALL Nuke.bat ipAdd %%A

