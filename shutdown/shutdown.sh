#!/bin/bash
# Author Gemstone Hashghost

# Generating some cool banner
figlet -t -k gems

bold=$(tput bold)
normal=$(tput sgr0)

user_input=$1
process_name=$2

checkRunningProgramms(){
    #crond stuffs
    crond_process=$(ps aux  | grep crond | awk '{print $2}' | head -n 3)

    #close libreoffice process if it's up
    libreoffice_process=$(ps aux  | grep libreoffice | awk '{print $2}' | head -n 3)

    #Kill vmware process if vmware is installed
    vmware_process=$(ps aux  | grep vmware | awk '{print $2}' | head -n 5) 
}

killRunningProccesses(){
    #kill basic processes that might be open and send errors to null:
    sudo pkill obsidian >  /dev/null 2>&1
    sudo pkill nautilus > /dev/null 2>&1
    sudo pkill sublime > /dev/null 2>&1
    sudo pkill firefox > /dev/null 2>&1
    sudo pkill evince > /dev/null 2>&1
    sudo pkill code >  /dev/null 2>&1
    sudo pkill gedit > /dev/null 2>&1
    sudo pkill chromium > /dev/null 2>&1
    sudo pkill -9  vlc >  /dev/null 2>&1
    sudo kill -9 $vmware_process 2>/dev/null
    sudo kill -9 $libreoffice_process > /dev/null 2>&1
    sudo kill -9 $crond_process  > /dev/null 2>&1
}

singleKill(){
   sudo kill $(ps aux | grep $process_name | awk '{print $2}')
}

executingOptions(){
    if [ "$user_input" = "-s" ] && [ "$user_input" != "" ]; then
        
        # Normal shutdown 
        checkRunningProgramms
        killRunningProccesses
        shutdown now

    elif [ "$user_input" = "-i" ] && [ "$user_input" != "" ]; then
        
        # If user session inhibited
        checkRunningProgramms
        killRunningProccesses
        sudo systemctl poweroff -i

    elif [ "$user_input" = "-r" ] && [ "user_input" != "" ]; then
       # Normal reboot  
        checkRunningProgramms
        killRunningProccesses    
        sudo reboot

   elif [ "$user_input" = "-o" ] && [ "process_name" != "" ]; then
       # Kill only single process
       singleKill
       reset
       

   elif [ "$user_input" = "-h" ] || [ "$user_input" = "" ]; then
        # Help menu 
        printf "\nUsage\n" 
        printf " shut [option]\n"
        printf "${bold}\ngemstone script for shutdown machine\n"
        printf "${normal}\nOptions:\n"
        printf "
        -h \t Show help
        -o \t Kill Single Application
        -i \t Shutdown with systemctl
        -r \t Reboot the machine
        -s \t Power-Off
        "
    else
        printf "The system is "
        uptime -p
        neofetch
    fi
}
# Calling all declared functions
executingOptions
