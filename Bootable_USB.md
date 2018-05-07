# Create A Bootable Debian Based USB

# Introduction
The documentation for how I created a bootable USB using the `dd` utility.
I used Kali Linux for this projects.

## What was needed:
* A USB
* A computer
* Access to Internet(Unless you have the iso image already downloaded)

## The Steps

1. I downloaded the Kali Linux ISO image from the following website:
   https://www.kali.org/downloads/
2. Connected the USB to my computer.
3. The following command `lsblk` displayed where in my system the USB was mounted.
   I must unmount the USB in order to do anything with it.
4. To unmount the USB I run this command: `umount` and provided the correct location of the USB, 
   /media/sprdr32/0408-6EE4
5. I run an `lsblk` command on the terminal to make sure the USB has been unmounted. Which it had been.
6. Using the fdisk utility I formated the USB.
   * first I ran `fdisk /dev/sdb`.
   * The USB had a default partition 1 in it.
   * I used the `d` option to delete the default partition.
   * Used th `l` option to list the known partition types. 83 = 'Linux' 82 = 'Linux Swap'
   * I created a new partition using the 'n' option.
   * Choose `p` option for primary partition. 
   * Choose default for everything else. 
   * The partition of type 'Linux' was credated and of size 3.8 GB.
   * Used `w` option to write table and exit.
7. 
