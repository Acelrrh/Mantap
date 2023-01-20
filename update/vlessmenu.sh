#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)
echo "Checking VPS"
#########################
IZIN=$(curl -sS https://raw.githubusercontent.com/Acelrrh/supreme/main/permission/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
else
echo -e "\e[31mUPSS ANDA BELUM BERLANGGANAN\e[0m";
exit 0
fi
#EXPIRED
expired=$(curl -sS https://raw.githubusercontent.com/Acelrrh/supreme/main/permission/ip | grep $MYIP | awk '{print $3}')
echo $expired > /root/expired.txt
today=$(date -d +1day +%Y-%m-%d)
while read expired
do
	exp=$(echo $expired | curl -sS https://raw.githubusercontent.com/Acelrrh/supreme//permission/ip | grep $MYIP | awk '{print $3}')
	if [[ $exp < $today ]]; then
		Exp2="\033[1;31mExpired\033[0m"
        else
        Exp2=$(curl -sS https://raw.githubusercontent.com/Acelrrh/supreme/main/permission/ip | grep $MYIP | awk '{print $3}')
	fi
done < /root/expired.txt
rm /root/expired.txt
Name=$(curl -sS https://raw.githubusercontent.com/Acelrrh/supreme/main/permission/ip | grep $MYIP | awk '{print $2}')
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                          VLESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. BUAT AKUN XRAYS VLELSS WEBSOCKET"
echo -e "$yy 2$y. HAPUS AKUN XRAYS VLESS WEBSOCKET"
echo -e "$yy 3$y. EXTENDING AKUN XRAYS VLESS AKTIF LIFE"
echo -e "$yy 4$y. CEK USER LOGI XRAYS VLESS"
echo -e "$yy 5$y. MENU"
echo -e "$yy 6$y. KELUAR"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addvless
;;
2)
delvless
;;
3)
renewvless
;;
4)
cekvless
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
