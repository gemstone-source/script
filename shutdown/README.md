# Shutdown linux machine.
### Usage
1. For help, just run the script without any argument 
    
```
    └─$ ./shutdown.sh                                          
                             
  __ _   ___  _ __ ___   ___ 
 / _` | / _ \| '_ ` _ \ / __|
| (_| ||  __/| | | | | |\__ \
 \__, | \___||_| |_| |_||___/
 |___/                       

Usage
 shut [option]

gemstone script for shutdown machine

Options:

        -h 	 Show help
        -i 	 Shutdown with systemctl
        -r 	 Reboot the machine
        -s 	 Power-Off                      
```
2. For help how to use the script.
```
    └─$ ./shutdown.sh  -h
```
3. To restart machine.
```
└─$ ./shutdown.sh  -r
```
4. To shutdown machine.
```
└─$ ./shutdown.sh  -s
```
5. To shutdown when user session inhibited.
```
└─$ ./shutdown.sh  -i
```

