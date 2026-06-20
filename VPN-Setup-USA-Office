/ip pool
add name=l2tp_pool ranges=172.16.1.10-172.16.1.50

/ppp profile
add name=l2tp-profile \
local-address=172.16.1.1 \
remote-address=l2tp_pool

/ppp secret
add name=pakistan-office \
password=VPN@123 \
service=l2tp \
profile=l2tp-profile

/interface l2tp-server server
set enabled=yes \
use-ipsec=yes \
ipsec-secret=StrongVPN123 \
default-profile=l2tp-profile

/ip firewall filter

add chain=input protocol=udp \
port=500,1701,4500 action=accept

add chain=input protocol=ipsec-esp \
action=accept
