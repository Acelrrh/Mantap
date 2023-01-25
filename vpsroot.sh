#!/bin/bash
# Mod By SL
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/acelrrh/Mantap/main/sshd_config
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/acelrrh/Mantap/main/addhost.sh
systemctl restart sshd;
