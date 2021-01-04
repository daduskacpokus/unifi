yum -y install epel-release
yum --enablerepo=epel -y install strongswan xl2tpd
yum -y install strongswan xl2tpd

VPN_SERVER_IP=$1
VPN_IPSEC_PSK=$2
VPN_USER=$3
VPN_PASSWORD=$4




cat > /etc/ppp/options.l2tpd.client <<EOF
ipcp-accept-local
ipcp-accept-remote
refuse-eap
require-chap
noccp
noauth
mtu 1280
mru 1280
noipdefault
defaultroute
usepeerdns
connect-delay 5000
name $VPN_USER
password $VPN_PASSWORD
EOF

chmod 600 /etc/ppp/options.l2tpd.client

mkdir -p /var/run/xl2tpd
touch /var/run/xl2tpd/l2tp-control

service strongswan restart
service xl2tpd restart

strongswan up myvpn

echo "c myvpn" > /var/run/xl2tpd/l2tp-control