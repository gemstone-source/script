#linux Offices
sudo apt install libreoffice

#install metadata tool
sudo apt install exiftool

#tool for recording screen 
sudo apt-get -y install simplescreenrecorder

# p7zip-full, provides 7z and 7za which support more compression formats.
sudo apt install p7zip-full

#install tor browser
sudo apt install -y tor torbrowser-launcher

#install neofetch for checking dev info.
sudo apt install neofetch

#video player
sudo apt install mpv

# directoy search
sudo apt install dirsearch 

#docker installtion
sudo apt install docker.io

#Steganoganography tool
sudo apt install steghide

#chisel for docker
sudo apt install chisel

#install Cutter, tool for reverse engineering.
wget https://github.com/rizinorg/cutter/releases/download/v2.1.0/Cutter-v2.1.0-Linux-x86_64.AppImage
sudo mv Cutter-v2.1.0-Linux-x86_64.AppImage
sudo chmod +x Cutter-v2.1.0-Linux-x86_64.AppImage

#wine installation
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt -y install wine32

#install vagrant
sudo apt install vagrant 

#This application provides display and control of Android devices connected via USB
sudo apt install scrcpy  