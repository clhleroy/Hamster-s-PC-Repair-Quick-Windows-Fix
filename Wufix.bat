net stop bits
net stop wuauserv
net stop msiserver
net stop cryptsvc
net stop appidsvc
net stop bits
net stop wuauserv
net stop msiserver
net stop cryptsvc
net stop appidsvc
Ren %Systemroot%\SoftwareDistribution SoftwareDistribution.old
Ren %Systemroot%\System32\catroot2 catroot2.old
regsvr32.exe /s atl.dll
regsvr32.exe /s urlmon.dll
regsvr32.exe /s mshtml.dll
netsh winsock reset
netsh winsock reset proxy
rundll32.exe pnpclean.dll,RunDLL_PnpClean /DRIVERS /MAXCLEAN
dism /Online /Cleanup-image /ScanHealth
dism /Online /Cleanup-image /CheckHealth
dism /Online /Cleanup-image /RestoreHealth
dism /Online /Cleanup-image /StartComponentCleanup
Sfc /ScanNow
winmgmt /salvagerepository
winmgmt /verifyrepository
winmgmt /resetrepository
ideviceonfig /release
ideviceonfig /flushdns
ideviceonfig /renew
ideviceonfig /registerdns
arp -d *
nbtstat -R
nbtstat -RR
netsh int ip reset
netsh winsock reset
netsh winsock reset proxy
net start bits
net start wuauserv
net start msiserver
net start cryptsvc
net start appidsvc
cls
echo.
echo.
echo.
echo.
echo IP renew has finished and your device will now automaticly reboot.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
Shutdown /r /f