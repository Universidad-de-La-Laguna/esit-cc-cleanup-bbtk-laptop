@echo on
SET mypath=%~dp0
netsh wlan add profile filename=%mypath:~0,-1%\ULL-CONECTA.xml user=all
netsh wlan add profile filename=%mypath:~0,-1%\Wi-Fi-eduroam.xml user=all
pause