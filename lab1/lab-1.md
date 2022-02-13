# lab1 for lldp/config tool stuff

## figure


## generate initial configuration for switches by m4!

```
$ vi machines.list
$ vi sw_template.m4
$ mkdir init_config
$ cat machines.list | grep -v "^$" | awk '{print "-DHOSTNAME=\""$1"\" -DIPADDR=\""$2"\" > ./init_config/"$1".conf"}' | xargs -IXXXX sh -c "m4 XXXX sw_template.m4"
$ cat machines.list | grep -v "^$" | awk '{print "-DHOSTNAME=\""$1"\" -DIPADDR=\""$2"\""}' | xargs -IXXXX sh -c "m4 XXXX sw_template.m4"
$ ls init_config/
sw1.conf  sw2.conf  sw3.conf  sw4.conf
$ grep -e "hostname " -e "ip address" init_config/sw*.conf
init_config/sw1.conf:hostname sw1
init_config/sw1.conf: ip address 192.168.6.100 255.255.255.0
init_config/sw2.conf:hostname sw2
init_config/sw2.conf: ip address 192.168.6.101 255.255.255.0
init_config/sw3.conf:hostname sw3
init_config/sw3.conf: ip address 192.168.6.102 255.255.255.0
init_config/sw4.conf:hostname sw4
init_config/sw4.conf: ip address 192.168.6.103 255.255.255.0
```




