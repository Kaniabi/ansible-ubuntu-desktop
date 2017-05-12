#!/bin/bash -xe

echo Installs basic tools.
sudo apt-get install -y -qq python3-pip git git-core openssh-server
sudo pip3 install ansible

sudo Clone setup repository.
git clone https://github.com/Kaniabi/ansible-ubuntu-desktop.git $HOME/.ansible-ubuntu-desktop
cd $HOME/.ansible-ubuntu-desktop

sudo Execute ansible playbook.
ansible-playbook -i hosts install-playbook.yml -c local -K
