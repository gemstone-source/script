#!/bin/bash 

user_input=$1

# openvpn for hackthebox
htbOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

# openvpn for tryhackme
thmOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

if [ "$user_input" = "htb" ];then
	htbOpenvpn

elif [ "$user_input" = "thm" ]; then
	thmOpenvpn
fi