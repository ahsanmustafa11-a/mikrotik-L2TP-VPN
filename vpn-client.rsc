/interface l2tp-client

add name=L2TP-USA \
connect-to=USA_PUBLIC_IP \
user=pakistan-office \
password=VPN@123 \
use-ipsec=yes \
ipsec-secret=StrongVPN123 \
disabled=no

/ip route

add dst-address=10.10.10.0/24 \
gateway=L2TP-USA
