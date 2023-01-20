#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                  MENU UTAMA $yy"
echo -e "$y            Script Mod By BABANG BOY $yy"
echo -e "$y-------------------------------------------------$m"
echo -e "$yy 1$y.  SSH & OpenVPN MENU  $yl"
echo -e "$yy 2$y.  L2TP MENU$yl"
echo -e "$yy 3$y.  PPTP MENU$yl"
echo -e "$yy 4$y.  SSTP MENU$yl"
echo -e "$yy 5$y.  WIREGUARD MENU$yl"
echo -e "$yy 6$y.  SHADOWSOCKS MENU$yl"
echo -e "$yy 7$y.  SHADOWSOCKSR MENU$yl"
echo -e "$yy 8$y.  XRAY VMESS MENU$yl"
echo -e "$yy 9$y.  XRAY VLESS MENU$wh"
echo -e "$yy 10$y. XRAY TROJAN MENU$yl"
echo -e "$yy 11$y. TROJAN GO MENU$yl"
echo -e "$yy 12$y. XRAY GRPC MENU$yl"
echo -e "$yy 13$y. SLOWDNS MENU $yl"
echo -e "$yy 14$y. CEK SEMUA IP PORT$yl"
echo -e "$yy 15$y. CEK SEMUA SERVICE VPN$yl"
echo -e "$yy 16$y. UPDATE MENU (Update)$yl"
echo -e "$yy 17$y. sl-fix (Perbaiki Error SSLH+WS-TLS setelah reboot)$yl"
echo -e "$yy 18$y. Settings (Pengaturan)$wh"
echo -e "$yy 19$y. Exit (Keluar)$wh"
echo -e "$yy 20$y. copyrepo (Salin Repo Script Mantap)$yl"
echo -e "$yy 21$y. menuinfo (Untuk Mendapatkan Informasi)$yl"
echo -e "$yy 22$y. Shadowsocks Plugin (Buat Akun)$wh"
echo -e "$y-------------------------------------------------$m"
read -p "Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
copyrepo
;;
21)
clear
menuinfo
;;
22)
clear
addss-p
;;
*)
clear
menu
;;
esac
