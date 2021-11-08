# Termux to ADB+SSH autosetup
#### This uses SSH to passthough your termux session to adb on your desktop. The connection is passed from your cell phone to your computer via adb. This script uses port 8022 instead of the standard ssh port because android sometimes doesnt like to port over port 22 and if your computer is aready running a ssh server this script will not interfere.

# Quick setup

#### For linux desktops:

`wget https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.sh && chmod +x ./setupsshfiles.sh && ./setupsshfiles.sh`

#### For windows desktops:

`curl https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.bat --output setupsshfiles.bat && echo. && echo. && setupsshfiles.bat`


# Your steps:

1) On termux, do "apt install openssh"
2) Now you type "sshd -p8022" into termux
3) Give Termux a password with "passwd"
4) (Windows Only) If adb.exe is stored somewhere where CMD cant find it just use notepad to edit the adb path inside of the batch script.
5) Launch this script and it will set you up in around 10-15 seconds

###### General windows file explorer tip, hold shift and click on adb.exe. There should be a option to copy the path to the file.

### Now you have a autoconnect script that you can use at any time. Good luck! I also recommend that you setup termux to run "sshd -p8022" on boot.
