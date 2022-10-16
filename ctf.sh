#!/bin/bash 

user_input=$1

# openvpn for hackthebox
htbOpenvpn(){
	sudo openvpn ~/C7F5/htb/openvpn/hashghost.ovpn
}

# vpn for the hackthebox release arena
htbArena(){
	sudo openvpn ~/C7F5/htb/openvpn/release_arena_hashghost.ovpn
}

# openvpn for tryhackme
thmOpenvpn(){
	sudo openvpn ~/C7F5/thm/openvpn/hashghost.ovpn
}

if [ "$user_input" = "htb" ] && [ "$user_input" != "" ];then
	htbOpenvpn

elif [ "$user_input" = "htb-a" ] && [ "$user_input" != "" ];then
	htbArena	
	
elif [ "$user_input" = "thm" ] && [ "$user_input" != "" ]; then
	thmOpenvpn

else
	printf "Hello keep hacking " && hostname
fi
