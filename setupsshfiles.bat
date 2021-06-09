@echo off
set adb-exe="C:\Users\ianki\Desktop\platform-tools\adb.exe"

echo _________________________________
echo make sure you have your phone plugged thoughout this setup
echo.
echo Have openssh installed on your phone
echo also run sshd -p8022 on termux
echo.
echo Make sure your phone has a password by typing passwd
echo Hit Ctrl+C to stop or press any key to continue
echo _________________________________
echo. 
echo.
pause

echo.
echo.
echo Making local ssh launch scripts
echo %adb-exe% forward tcp:8022 tcp:8022  > PhoneSSH.bat
echo ssh 127.0.0.1 -p8022 >> PhoneSSH.bat
echo.

echo _________________________________
echo generating a ssh key for automatic login
echo Just use the default directory for this key
echo Also have a password NOT set so it is a automatic login
echo _________________________________
ssh-keygen -t rsa -b 4096

echo transfering the key to phone
%adb-exe% forward tcp:8022 tcp:8022
ssh-copy-id 127.0.0.1 -p8022

echo.
echo.
echo _________________________________
echo Now you are set up, you now have it setup to connect to your phone at any time
echo Now you will be brought to your termux if this worked
echo _________________________________
echo.
cls
ssh 127.0.0.1 -p8022