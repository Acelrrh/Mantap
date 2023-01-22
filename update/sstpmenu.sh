#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                                SSTP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y 1$y. Create Account SSTP"
echo -e "$y 2$y. Delete Account SSTP"
echo -e "$y 3$y. Extending Account SSTP Active Life"
echo -e "$y 4$y. Check User Login SSTP"
echo -e "$y 5$y. Menu"
echo -e "$y 6$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addsstp
;;
2)
delsstp
;;
3)
renewsstp
;;
4)
ceksstp
;;
5)
clear
menu
;;
6)
clear
exit
;;
*)
clear
menu
;;
esac
