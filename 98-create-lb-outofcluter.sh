It seems the problem is the lack of internet access on the VMs spawned in libvirt/kvm. This should be easy to fix. Try the following:

    First check if you spin up a normal VM in kvm, like rhel7 or centos7, does the VM get internet access by default (i.e, without any manual intervention). If it doesn't try to check what's missing. May be DHCP is disabled on the libvirt network being used by libvirt. If DHCP is the problem, simply use the -N, --libvirt-oct (see README or --help for more details) option so the script creates a new libvirt network for your OCP cluster.

    If internet access is fine for normal VMs, dig a bit more deeper by downloading centos cloud image and manually spinning it up to see why there is no internet access on the VM. You can use the following commands to test this out:

    # Download the image to a tmp dir
    mkdir /tmp/test
    cd /tmp/test
    wget https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2

    # Setup image
    virt-customize -a "./CentOS-7-x86_64-GenericCloud.qcow2" \
        --uninstall cloud-init --root-password password:test \
        --selinux-relabel --install haproxy --install bind-utils

    # Install image as VM
    virt-install --import --name vm-net-test --disk "./CentOS-7-x86_64-GenericCloud.qcow2" \
        --memory 1024 --cpu host --vcpus 1 --os-type linux --os-variant rhel7-unknown \
        --network network=default,model=virtio \
        --noreboot --noautoconsole

    # Start VM
    virsh start vm-net-test

    If the virt-customize is failing, remove the the --install haproxy --install bind-utils from the virt-customize above and try again. Once the VM is started, login through the console (root password is set to test) and see what is the issue that is not letting this VM have internet access.


