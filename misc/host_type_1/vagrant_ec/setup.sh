#!/bin/bash

wget https://kbnoc1.kwikbit.com/kb_edge_bootstrap
bash kb_edge_bootstrap
apt -y install kwikbit-edge
cp -f /tmp/authorized_keys /root/.ssh/authorized_keys
cp -f /tmp/sshd_config /etc/ssh/sshd_config
systemctl restart ssh
echo
echo
ifconfig eth1| grep inet | cut -d' ' -f 10
