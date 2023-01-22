#!/bin/bash
#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y 1$y.  Add Or Change Subdomain Host For VPS"
echo -e "$y 2$y.  Change Port Of Some Service"
echo -e "$y 3$y.  Autobackup Data VPS"
echo -e "$y 4$y.  Backup Data VPS"
echo -e "$y 5$y.  Restore Data VPS"
echo -e "$y 6$y.  Webmin Menu"
echo -e "$y 7$y.  Limit Bandwith Speed Server"
echo -e "$y 8$y.  Check Usage of VPS Ram"
echo -e "$y 9$y.  Reboot VPS"
echo -e "$y 10$y. Speedtest VPS"
echo -e "$y 11$y. Displaying System Information"
echo -e "$y 12$y. Info Script Auto Install"
echo -e "$y 13$y. Menu"
echo -e "$y 14$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
autobackup
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
limitspeed
;;
8)
ram
;;
9)
reboot
;;
10)
speedtest
;;
11)
info
;;
12)
about
;;
13)
clear
menu
;;
14)
clear
exit
;;
*)
clear
menu
;;
esac
