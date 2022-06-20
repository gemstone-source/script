#start lampp

printf "This Script helps to start,end and also showing the status of xampp on your linux machine\n"

#navigating to the lampp directory
locate1=sudo cd /opt/lampp
#Checkig if the lampp folder is there 

#add arguments for adding lampp $1start $2mysql or viceversa  or lampp to start everything
#need to be cool? jus automate everythimh with script
if [ -f $locate1 ]
then 
    printf "\n===================================Gemstone Script=======================================\n\n"                              
        sudo ./lampp start  #starting the lampp        
    printf "\n=========================================================================================\n\n"
    printf "Do you want to stop the service ?"
    printf " Type yes to stop service or no to continue running: "
    
    read user_selection  #allow user to selct what service is he or she wants to perform
    
    #perfoming some tasks due to the user selections.
    if [ $user_selection = "yes" ] ;
        then
            sudo ./lampp stop
    else
        sudo ./lampp status
    fi
#Execute this block of code if find no lammp folder on the machine     
else 
printf "\n=========================================================================================\n"
    printf "\t\t\t\tNo such file or directory\n" 
printf "========================================================================================="
fi

