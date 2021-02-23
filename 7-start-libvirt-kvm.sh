clear
echo "This will start and enable libvirt"
/usr/bin/systemctl start libvirtd
/usr/bin/systemctl enable libvirtd
/usr/bin/systemctl status libvirtd
