#!/bin/bash
clear#!/bin/bash
clear 
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m      • SSH MENU •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] BUAT AKUN SSH "
echo -e " [\e[36m•2\e[0m] BUAT TRIAL SSH "
echo -e " [\e[36m•3\e[0m] RENEW SSH "
echo -e " [\e[36m•4\e[0m] HAPUS AKUN SSH "
echo -e " [\e[36m•5\e[0m] CEK USER LOGI "
echo -e " [\e[36m•6\e[0m] CATATAN MEMBER "
echo -e " [\e[36m•7\e[0m] HAPUS USER EXP "
echo -e " [\e[36m•8\e[0m] SET UP KILL SSH "
echo -e " [\e[36m•9\e[0m] RESTART ALL SERVIC "
echo -e " [\e[36m•9\e[0m] MENU UTAMA "
echo -e " [\e[36m•9\e[0m] KELUAR "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
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
