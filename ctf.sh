#!/bin/bash 

user_input=$1

htbOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

thmOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

if [ "$user_input" = "htb" ];then
	htbOpenvpn

elif [ "$user_input" = "thm" ]; then
	thmOpenvpn
fi