echo -------------------------------------
echo make sure you have your phone plugged thoughout this setup
echo
echo Have openssh installed on your phone
echo also run sshd -p8022 on termux
echo
echo Make sure your phone has a password by typing passwd
echo Hit Ctrl+C to stop or press any key to continue
echo -------------------------------------
echo 
echo
echo Hit ENTER or RETURN to continue
read

echo
echo ------------------------------
echo Making local ssh launch scripts
echo ------------------------------
echo "adb forward tcp:8022 tcp:8022 && ssh 127.0.0.1 -p8022 " >> PhoneSSH.sh
chmod +x PhoneSSH.sh
echo

echo -------------------------------------
echo generating a ssh key for automatic login
echo Just use the default directory for this key
echo Also have a password NOT set so it is a automatic login
echo -------------------------------------
ssh-keygen -t rsa -b 4096

echo transfering the key to phone
adb forward tcp:8022 tcp:8022
ssh-copy-id 127.0.0.1 -p8022

echo
echo
echo -------------------------------------
echo Now you are set up, you now have it setup to connect to your phone at any time
echo Now you will be brought to your termux if this worked
echo -------------------------------------
echo
echo Connecting to the phone...
ssh 127.0.0.1 -p8022
