#!/bin/bash

cp -f /tmp/authorized_keys /root/.ssh/authorized_keys
cp -f /tmp/sshd_config /etc/ssh/sshd_config
systemctl restart ssh
echo
echo
ip address | grep eth1 | tail -1 | cut -d' ' -f 6
