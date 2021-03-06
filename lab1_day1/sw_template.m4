en
conf t
ip domain name example.com
crypto key generate rsa
2048
hostname HOSTNAME
clock timezone JST 9 0
lldp run
ip vrf mgmt
vlan 10
 name management
 no shutdown
 exit
interface Et3/3
 description management
 switchport mode access
 switchport access vlan 10
 spanning-tree bpdufilter enable
 exit
interface vlan 10
 ip vrf forwarding mgmt
 ip address IPADDR 255.255.255.0
 no shutdown
 exit
ip route vrf mgmt 0.0.0.0 0.0.0.0 192.168.6.1
username pocadmin secret 5 $1$R9Ha$hgeMTn9EPWNlW4CJuRAuF1
line vty 0 4
 login local
 transport input ssh
ip ssh version 2
enable secret 5 $1$.9uO$sWBzTsydJcPgMiDfI8tqS.
ntp server vrf mgmt 192.168.6.3
logging origin-id hostname
logging facility local5
logging host 192.168.6.3 vrf mgmt
end
wr mem