MENU UTAMA                                Script Mod By SL                    -------------------------------------------------
 1.  SSH & OpenVPN MENU                          2.  L2TP MENU
 3.  PPTP MENU                                   4.  SSTP MENU
                             VMESS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                        XRAY ALL ACCOUNT                     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
User: 555
grep: /etc/xray/config.json: No such file or dir━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
====== XRAY MANTAP Multi Port=======
INFORMASI AKUN VPN XRAY                         IP: 104.171.114.172
Host/Domain: .Sg01.vpnbima.my.id                Password/ID: f217e901-fd90-43b5-a8c5-33ae05d71c6e                                               ====== Service Port =======
Websocket TLS  : 443                            Websocket HTTP : 80                             GRPC TLS       : 443                            *Note OPOK: opok only supports coremeta         *Note SHADOWSOCKS: gunakan custom config atau plugin xray                                       ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━             Protokol VPN: TROJAN
Network: WS/GRPC                                ====== Path =======
=> WS TLS : /xraytrojanws                       => GRPC   : trojan-grpc
=> OPOK   : ws://bugcom/xraytrojanws            ====== Import Config From Clipboard =======
Link Config WS TLS   : trojan://f217e901-fd90-43b5-a8c5-33ae05d71c6e@.Sg01.vpnbima.my.id:443?path=/xraytrojanws&security=tls&host=bug.com&type=ws&sni=bug.com#555
Link Config GRPC TLS : trojan://f217e901-fd90-43b5-a8c5-33ae05d71c6e@.Sg01.vpnbima.my.id:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#555
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Protokol VPN: SHADOWSOCKS
Network: WS/GRPC
Method Cipers : aes-128-gcm
====== Path =======
=> WS TLS : /xrayssws
=> GRPC   : ss-grpc
=> OPOK   : ws://bugcom/xrayssws
======Custom Import Config From URL =======
URL Custom Config WS TLS   : http://.Sg01.vpnbima.my.id:89/ss-ws-555.txt
URL Custom Config GRPC TLS : http://.Sg01.vpnbima.my.id:89/ss-grpc-555.txt
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Protokol VPN: VLESS
Network: WS/GRPC
====== Path =======
=> WS TLS : /xrayws
=> GRPC   : vless-grpc
=> OPOK   : ws://bugcom/xrayws
====== Import Config From Clipboard =======
Link Config WS TLS    : vless://f217e901-fd90-43b5-a8c5-33ae05d71c6e@.Sg01.vpnbima.my.id:443?path=/xrayws&security=tls&encryption=none&type=ws#555
Link Config GRPC TLS  : vless://f217e901-fd90-43b5-a8c5-33ae05d71c6e@.Sg01.vpnbima.my.id:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#555
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Protokol VPN: VMESS
Alter ID: 0
Network: WS/GRPC
====== Path =======
=> WS TLS : /xrayvws
=> GRPC   : vmess-grpc
=> OPOK   : ws://bugcom/xrayvws
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SCRIPT MANTAP XRAY

root@habibilah59:~#
