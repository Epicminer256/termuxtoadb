# Termux to ADB+SSH autosetup
#### This uses SSH to passthough your termux session to adb on your desktop. The connection is passed from your cell phone to your computer via adb. This script uses port 8022 instead of the standard ssh port because android sometimes doesnt like to port over port 22 and if your computer is aready running a ssh server this script will not interfere.

# Quick setup

Note, this script will make another script to easly access your termux session

#### For linux desktops:

`wget https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.sh && chmod +x ./setupsshfiles.sh && ./setupsshfiles.sh`

#### For windows desktops:

`curl https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.bat --output setupsshfiles.bat && echo. && echo. && setupsshfiles.bat`

Make sure you have the path to adb.exe. (file explorer tip, hold shift and click on adb.exe. There should be a option to copy the path to the file.)

### On your phone

`passwd`

`apt install openssh`

`sshd -p8022`
