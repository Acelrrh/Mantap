#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                          WIREGUARD $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y 1$y. Create Account Wireguard"
echo -e "$y 2$y. Delete Account Wireguard"
echo -e "$y 3$y. Extending Account Wireguard Active Life"
echo -e "$y 4$y. Menu"
echo -e "$y 5$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 5 ] : " menu
echo -e ""
case $menu in
1)
addwg
;;
2)
delwg
;;
3)
renewwg
;;
4)
clear
menu
;;
5)
clear
exit
;;
*)
clear
menu
;;
esac
