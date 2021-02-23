clear
echo "creating core user and granting sudo"
echo "hit ctrl+c to quit"
sleep 10 
useradd -G wheel core
sleep 5 
echo "type passwd core and set to passw0rd"
