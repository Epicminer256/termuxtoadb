# Termux to ADB+SSH autosetup
This uses SSH to passthough your termux session to adb on your desktop

The connection is like this
PhoneTermuxShell -> ADB Local Fowarding -> SSH

Here is how you set this up (THIS SCRIPT ONLY WORKS ON LINUX AT THE MOMENT)


1) On termux, do "apt install openssh"
2) Now you type "sshd -p8022" into termux
3) Give Termux a password with "passwd"
4) launch this script on your laptop or desktop "./termuxtoadb"
5) The script will set you up in around 10-15 seconds
