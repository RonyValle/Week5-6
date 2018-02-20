#!/bin/bash
#Rony Valle
#Chapter6 Script

#Command to check your system's run level

who -r

#identify your init
#If you are able to acces this directories you have systemd
cd /usr/lib/systemd
#for system V you will be able to change into this directories
cd /etc/inittab

#check your default.target Requires Wants Requisite & Conflicts

systemctl show -p Requires default.target

systemctl show -p Wants default.target

systemctl show -p Requisite default.target

systemctl show -p Conflicts default.target

#check your current systemd configuration search path
systemctl -p UnitPath show

#view list of active units on your system
systemctl list-units

#view list of current jobs on your system
systemctl list-jobs

#view Upstart jobs
initctl list

#system V shutting your system down
shutdown -h now

#reboot your system in 5 minutes
shutdown -r +5
























