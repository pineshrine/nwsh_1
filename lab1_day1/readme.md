# lab1, day 1 for 1st network shell arts!

## figure

![lab1-day1-figure1](./lab1-day1-figure.png)


## value

sw[1-4]

management ip's are 192.168.6.100-103

id/pass/secret = pocadmin/password/password

## 1. generate initial configuration for switches by m4!

```
$ vi machines.list
$ vi sw_template.m4
$ mkdir init_config
$ cat machines.list | grep -v "^$" | awk '{print "-DHOSTNAME=\""$1"\" -DIPADDR=\""$2"\" > ./init_config/"$1".conf"}' | xargs -IXXXX sh -c "m4 XXXX sw_template.m4"
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

## 2. configure each switches

just do it via eve-ng console

## 3. add .cloginrc files to inbound access

!! replace exists .cloginrc
!! if you'd like to use exists one, please backup before below:

```
$ export PATH=$PATH:/usr/lib/rancid/bin
$ vi lab1_login.list
add method * ssh
add user 192.168.6.100 pocadmin
add password 192.168.6.100 password password
add user 192.168.6.101 pocadmin
add password 192.168.6.101 password password
add user 192.168.6.102 pocadmin
add password 192.168.6.102 password password
add user 192.168.6.103 pocadmin
add password 192.168.6.103 password password
$ cat lab1_login.list > ~/.cloginrc
$ chmod 600 ~/.cloginrc
$ clogin 192.168.6.100
192.168.6.100
spawn ssh -x -l pocadmin 192.168.6.100
The authenticity of host '192.168.6.100 (192.168.6.100)' can't be established.
RSA key fingerprint is SHA256:ttXdvH+5+78Egsylp+/43lQzYb7sBfmX1aTH0EeniHg.
Are you sure you want to continue connecting (yes/no)? 
Host 192.168.6.100 added to the list of known hosts.
yes
Warning: Permanently added '192.168.6.100' (RSA) to the list of known hosts.
Password: 

sw1>enable
Password: 
sw1#
sw1#exit
Connection to 192.168.6.100 closed by remote host.
Connection to 192.168.6.100 closed.
```

## 4. login & type specific command to multiple switches!

```

```
