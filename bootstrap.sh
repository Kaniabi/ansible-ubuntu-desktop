#!/bin/bash -xe

echo Installs basic tools.
sudo apt-get install -y -qq openssh-server net-tools

echo Configure public key
mkdir -p ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgHIedVICwvVMHMXx8NK98aztFwXSFlySLQSsY4VjqW8uEX/hZl9LvvysAzYJHJ4bOYsSOIJEjNrnSXdzdbCkY/lRfeGhK3cYqQGsCxqkOqxmFRH8OpRL0f3lzPFMG1akqLF4NkciywoQHdxAVD2BvhtoPcOo4r0mZLoynFhHdGZhoe/GotLKr5IQBB4yKOPNTUuTsdN14gF9xDNSNv9RbJPYekZWHotZV6OTy2u2BhdYnC8Se9Ngq2PVKRjtbIqMK2sVRPpIcaYoTmTcOS3B79Xt8m53/MzplbuaFl0E+fAtYz50u+aOrMTYlQ9cYTo8zzRiHHRTPg7mvL+anwJYB" >> ~/.ssh/authorized_keys

echo Configure password-less sudo
echo "ubuntu ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu
