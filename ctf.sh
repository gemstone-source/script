#!/bin/bash 

user_input=$1

# openvpn for hackthebox
htbOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

# openvpn for tryhackme
thmOpenvpn(){
	sudo openvpn ~/C7F5/thm/vpn/hashghost.ovpn
}

if [ "$user_input" = "htb" ] && [ "$user_input" != "" ];then
	htbOpenvpn

elif [ "$user_input" = "thm" ] && [ "$user_input" != "" ]; then
	thmOpenvpn

else
	printf "Hello keep hacking " && hostname
fi
