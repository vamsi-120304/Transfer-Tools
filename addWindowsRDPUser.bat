@ECHO OFF
:: This batch file adds user to Administrator and enables RDP
TITLE Add user
ECHO Adding user...
net user vamsi password /add
ECHO =================================
ECHO Adding user successfull.
ECHO =================================
net localgroup Administrators vamsi /add
ECHO =================================
ECHO user added to Admin group.
ECHO =================================
net localgroup "Remote Desktop Users" vamsi /add
ECHO Enabling RDP...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
ECHO =================================
ECHO RDP access made Availabe to user.
ECHO =================================
ECHO =================================
ECHO *#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
ECHO Creds of the user: -
ECHO Username: - vamsi
ECHO Password: - password
ECHO *#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
ECHO =================================
net users
