#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y    MENU2     XRAY/VMESS-GRPC/VLESS-GRPC $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y 1$y. Create Account XRAY/VMESS-GRPC/VLESS-GRPC $wh"
echo -e "$y 2$y. Delete Account XRAY/VMESS-GRPC/VLESS-GRPC $wh"
echo -e "$y 3$y. Extending Account XRAY/VMESS-GRPC/VLESS-GRPC Active Life$wh"
echo -e "$y 4$y. Check User Login XRAY/VMESS-GRPC/VLESS-GRPC $wh"
echo -e "$y 5$y. Script Update XRAY/VMESS-GRPC/VLESS-GRPC $wh"
echo -e "$y 6$y. Menu$wh"
echo -e "$y 7$y. Exit$wh"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 7 ] : " menu
echo -e ""
case $menu in
1)
fb-addgrpc
;;
2)
fb-delgrpc
;;
3)
fb-renewgrpc
;;
4)
fb-cekgrpc
;;
5)
grpcupdate2
;;
6)
clear
menu
;;
7)
clear
exit
;;
*)
clear
menu
;;
esac
