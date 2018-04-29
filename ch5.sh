
#!/bin/bash
#Rony Valle 
#chapter5 Script

#This chapter did not have many commands to use, but here are a few that we can use
#In this script we will be looking at the where the kernel in located when the system boots
#The Kernel's parameters 

echo ---
echo ---"The kernel's parameters"
cat /proc/cmdline 

#Command that shows the what has been happening to the cpu since the computer started 

echo ---
echo ---"The file that opened is what has been happening to your CPU since you turned the computer on"

dmesg | grep -i cpu > cpuinfo 

xdg-open cpuinfo

# This command display the Configurations of Grub

echo ---
echo ---This are your Grubs configurations:
echo ------
echo ----
echo ---
echo - 
sudo cat /etc/default/grub 
