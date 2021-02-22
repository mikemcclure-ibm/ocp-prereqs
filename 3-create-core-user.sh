echo "creating core user and granting sudo"
echo "hit ctrl+c to quit"
sleep 10 
useradd -G wheel core
echo "Setup the core user to not require a password"
echo "NOPASSWD: ALL"
sleep 5 
echo "vi the /etc/sudoers file"
echo "find the following line #includedir /etc/sudoers.d"
echo "Below that line enter username ALL=(ALL) NOPASSWD: ALL"

echo "no pw note working" 
echo "type passwd core and set to passw0rd"
