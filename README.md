# Termux to ADB+SSH autosetup
This uses SSH to passthough your termux session to adb on your desktop. The connection is passed from your cell phone to your computer via adb. This script uses port 8022 instead of the standard ssh port because android sometimes doesnt like to port over port 22 and if your computer is aready running a ssh server this script will not interfere.

# Quick setup

For linux:

wget https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.sh && chmod +x ./setupsshfiles.sh && ./setupsshfiles.sh

For windows (BETA):

curl https://raw.githubusercontent.com/Epicminer256/termuxtoadb/main/setupsshfiles.bat --output setupsshfiles.bat && setupsshfiles.bat


# Your steps:

1) On termux, do "apt install openssh"
2) Now you type "sshd -p8022" into termux
3) Give Termux a password with "passwd"
4) Make sure on windows your adb path is good, so check the second line of your script
5) launch this script and it will set you up in around 10-15 seconds

Now you have a autoconnect script that you can use at any time. Good luck!
