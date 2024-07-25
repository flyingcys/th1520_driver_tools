:: Script to flash imagess via fastboot, edit image path first

@echo off
call:RunACmd "fastboot.exe flash ram u-boot-with-spl-lpi4a_8gemmc.bin"
call:RunACmd "fastboot.exe reboot"
ping 127.0.0.1 -n 5 >nul
call:RunACmd "fastboot.exe flash uboot u-boot-with-spl-lpi4a_8gemmc.bin"
call:RunACmd "fastboot.exe flash boot  boot-lpi4a-20240720_171951.ext4"
call:RunACmd "fastboot.exe flash root  root-lpi4a-20240720_171951.ext4"

pause
exit

:RunACmd
SETLOCAL
set CmdStr=%1
echo IIIIIIIIIIIIIIII Run Cmd:  %CmdStr% 
%CmdStr:~1,-1% || goto RunACmd

GOTO:EOF
