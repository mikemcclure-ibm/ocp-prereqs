clear
echo "This will install and configure libvirt kvm qemu extrapackages-epel web fetch and Git programs"
echo "Press ctrl+c to cancel"
sleep 10
echo "subscription-manager register --username=<user_name> --password=<password>"
sleep 1
echo "Installing install dnf wget"
sleep 1
yum install dnf wget -y
sleep 1
echo "Installing prereqs"
sleep 5
dnf install -y qemu-kvm qemu-img libvirt virt-install libvirt-client
echo "qemu-kvm qemu-img libvirt virt-install libvirt-client install complete"
dnf install -y virt-manager libvirt-devel libvirt-daemon-kvm libvirt-daemon-driver-network
echo "virt-manager  libvirt-devel libvirt-daemon-kvm libvirt-daemon-driver-network install com-plete"
dnf install -y libguestfs-tools
echo "libguestfs-tools install complete"
