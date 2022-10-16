# debugError(){
    

    #if [ $? -eq 0 ]; then
    #   downloadResolvFile
    #fi

#}

#downloadResolvFile(){
   
#}


sudo systemctl enable systemd-networkd
sudo systemctl enable systemd-resolved
sudo systemctl start systemd-networkd
sudo systemctl start systemd-resolved
sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

sudo service resolvconf restart
        sudo apt-get purge resolvconf -y
        sudo apt-get install resolvconf -y 

sudo service NetworkManager restart