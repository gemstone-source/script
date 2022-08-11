#!/bin/bash

#Edited and modified by gemstone


echo "welcome this is configuration file for hotspot"

read  -e -p  "will you like to configure hotspot on your machine ? type yes to contue and no to exit: " user_input 

if [[ $user_input == "yes" ]];
then 
#installations of hostapd and dnsmasq
sudo apt-get install hostapd dnsmasq

#stop and disable hostapd and dnsmasq
sudo service hostapd stop
sudo service dnsmasq stop
sudo update-rc.d hostapd disable
sudo update-rc.d dnsmasq disable

#Appending the interface name and specify ip range for dhcp
echo "# Bind to only one interface
bind-interfaces
# Choose interface for binding
interface=wlan0
# Specify range of IP addresses for DHCP leasses
dhcp-range=192.168.150.2,192.168.150.10" >> sudo  /etc/dnsmasq.conf

#Appending driver,security mechanism and mode in hostapd confg file
echo  "# Define interface
interface=wlan0
# Select driver
driver=nl80211
# Set access point name
ssid=myhotspot
# Set access point harware mode to 802.11g
hw_mode=g
# Set WIFI channel (can be easily changed)
channel=6
# Enable WPA2 only (1 for WPA, 2 for WPA2, 3 for WPA + WPA2)
wpa=2
wpa_passphrase=mypassword"  >> sudo /etc/hostapd.conf

else
 echo "bye";
fi

debugError(){
    sudo systemctl enable systemd-networkd
    sudo systemctl enable systemd-resolved
    sudo systemctl start systemd-networkd
    sudo systemctl start systemd-resolved
    sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

    sudo service resolvconf restart

    if [ $? -eq 0 ]; then
        downloadResolvFile
    fi

    sudo service NetworkManager restart
}

downloadResolvFile(){
    sudo apt-get purge resolvconf
    sudo apt-get install resolvconf
}