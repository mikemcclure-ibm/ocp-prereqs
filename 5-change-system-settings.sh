clear
echo "This script will modify a few items to ensure ocp will install"
echo "First we will disable ipv6"
echo "Hit ctrl+c to abort"
sleep 10
clear
echo "------------------------------------------"
echo "vi /etc/sysctl.d/ipv6.conf"
echo ""
echo "Insert the following"
echo "net.ipv6.conf.all.disable_ipv6 = 1"
echo "net.ipv6.conf.default.disable_ipv6 = 1"
echo "nmcli conn show"
echo "sysctl -p /etc/sysctl.d/ipv6.conf"


echo "nmcli connection modify <NIC name> ipv6.method" "disabled"
echo "------------------------------------------"
echo "Restart systemctl with"
echo "systemctl restart systemd-sysctl"
echo  "------------------------------------------"
