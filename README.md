# termuxtoadb
This uses SSH to passthough your termux session to adb on your desktop

Here is how you set this up (THIS ONLY WORKS ON LINUX AT THE MOMENT)


1) On termux, do "apt install openssh screen"
2) Now you type "sshd -p8022" into termux
3) launch this script on your laptop or desktop "./termuxtoadb"
4) The script will lead you though the rest
