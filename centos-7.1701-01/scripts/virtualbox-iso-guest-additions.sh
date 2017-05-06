#!/bin/bash

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso


yum -y install dkms
yum -y install kernal-devel

# Install the VirtualBox guest additions
mount -o loop $VBOX_ISO /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

#Cleanup VirtualBox
rm -rf $VBOX_ISO

