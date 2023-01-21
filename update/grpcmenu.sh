#!/bin/bash
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m      • XRAY/VMESS-GRPC/VLESS-GRPC •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] BUAT XRAY/VMESS-GRPC/VLESS-GRPC "
echo -e " [\e[36m•2\e[0m] HAPUS AKUN XRAY/VMESS-GRPC/VLESS-GRPC  "
echo -e " [\e[36m•3\e[0m] EXTENDING AKUN XRAY/VMESS-GRPC/VLESS-GRPC AKTIF LIFE"
echo -e " [\e[36m•4\e[0m] CEK USER LOGI XRAY/VMESS-GRPC/VLESS-GRPC Active LIFE "
echo -e " [\e[36m•5\e[0m] CEK UPDATE XRAY/VMESS-GRPC/VLESS-GRPC Active LIFE
echo -e " [\e[36m•7\e[0m] KELUAR "
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
addgrpc
;;
2)
delgrpc
;;
3)
renewgrpc
;;
4)
cekgrpc
;;
5)
grpcupdate
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
