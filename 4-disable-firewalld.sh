clear
echo  "------------------------------------------"
echo "Now we are going to temporarily stop the Linux Firewall"
echo "Hit ctrl+c to abort"
sleep 2

echo "systemctl stop firewalld"
echo "systemctl disable firewalld"
echo "check firewall with firewall-cmd --list-all"
