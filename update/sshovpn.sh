#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                 SSH & OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y 1$y.  Create SSH & OpenVPN Account"
echo -e "$y 2$y.  Generate SSH & OpenVPN Trial Account"
echo -e "$y 3$y.  Extending SSH & OpenVPN Account Active Life"
echo -e "$y 4$y.  Check User Login SSH & OpenVPN"
echo -e "$y 5$y.  Daftar Member SSH & OpenVPN"
echo -e "$y 6$y.  Delete SSH & OpenVpn Account"
echo -e "$y 7$y.  Delete User Expired SSH & OpenVPN"
echo -e "$y 8$y.  Set up Autokill SSH"
echo -e "$y 9$y.  Displays Users Who Do Multi Login SSH"
echo -e "$y 10$y. Restart All Service"
echo -e "$y 11$y. Menu Utama"
echo -e "$y 12$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 12 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
menu
;;
12)
clear
exit
;;
*)
clear
menu
;;
esac
