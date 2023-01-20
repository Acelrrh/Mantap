#!/bin/bash
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m       • SHADOWSOCKSR •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Create Account SSR"
echo -e " [\e[36m•2\e[0m] Delete Account SSR "
echo -e " [\e[36m•3\e[0m] Extending Account SSR Active Life"
echo -e " [\e[36m•4\e[0m] Show Other SSR Menu "
echo -e " [\e[36m•5\e[0m] MENU "
echo -e " [\e[36m•6\e[0m] KELUAR "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu :  "  opt
1)
addssr
;;
2)
delssr
;;
3)
renewssr
;;
4)
ssr
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
