#!/bin/bash 
# Author Gemstone Hashghost

# Linux Offices
sudo apt install libreoffice

# Metadata tool
sudo apt install exiftool

# Tool for recording screen 
sudo apt-get -y install simplescreenrecorder

# p7zip-full, provides 7z and 7za which support more compression formats.
sudo apt install p7zip-full

# Tor browser
sudo apt install -y tor torbrowser-launcher

# Neofetch for checking dev info.
sudo apt install neofetch

# Video player
sudo apt install mpv

# Directoy search
sudo apt install dirsearch 

# Docker installtion
sudo apt install docker.io

# Steganoganography tool
sudo apt install steghide

# Chisel for pivoting
sudo apt install chisel

# Cutter, tool for reverse engineering.
wget https://github.com/rizinorg/cutter/releases/download/v2.1.0/Cutter-v2.1.0-Linux-x86_64.AppImage
sudo mv Cutter-v2.1.0-Linux-x86_64.AppImage
sudo chmod +x Cutter-v2.1.0-Linux-x86_64.AppImage

# Wine installation
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt -y install wine32

#install vagrant
sudo apt install vagrant 

# convert pdf to image
sudo apt install poppler-utils

# This application provides display and control of Android devices connected via USB
sudo apt install scrcpy  

# Auto change wallpapers
sudo apt install variety 

# Neofetch
sudo apt install neofetch -y 

# Install Screen Recorder
sudo apt update -y 
sudo apt install ffmpeg -y
sudo apt install obs-studio -y 

# Install Android tools for Pentesting
sudo apt install google-android-platform-tools-installer

