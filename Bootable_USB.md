# Create A Bootable Debian Based USB

# Introduction
The documentation for how I created a bootable USB using the `dd` utility.
I used Kali Linux for this project.

## What was needed:
* A USB
* A computer
* Access to Internet.

## The Steps

1. I downloaded the Kali Linux ISO image from the following website:
   https://www.kali.org/downloads/
2. Connected the USB to my computer.
3. The following command `lsblk` displayed where in my system the USB was mounted.
   I must unmount the USB in order to do anything with it.
4. To unmount the USB I run this command: `umount` and provided the correct location of the USB, 
   /media/sprdr32/0408-6EE4
5. I ran an `lsblk` command on the terminal to make sure the USB had been unmounted (Which it had).
6. Using the fdisk utility I formated the USB.
   * first I ran `sudo fdisk /dev/sdb`.
   * The USB had a default partition 1 in it.
   * I used the `d` option to delete the default partition.
   * Used the `l` option to list the known partition types. 83 = 'Linux' 82 = 'Linux Swap'
   * I created a new partition using the 'n' option.
   * Choose `p` option for primary partition. 
   * Choose default for everything else. 
   * The partition of type 'Linux' was credated and of size 3.8 GB.
   * Used `w` option to write to table and exit.
7. Using `mkfs` I formatted the USB.
   * `sudo mkfs -t ext4 -L "Kali Linux" /dev/sdb1`
   * *(The -t option let me specified the desire file system type in this case ext4)*
   * *(The -L option let me create a Label for the USB.."Kali Linux")*
8. I moved to the Directory where the iso is saved. 
9. I used the `dd` command to write the iso file to the USB
   * `sudo dd bs=4M if= kali-linux-2018.1-amd64.iso of=/dev/sdb`
   * *(bs is the Byte Size)*
   * *(if is the input file)*
   * *(of is the output file or the file or device I want to write to.)*
10. Took about 4 minutes to write but eventually it finished
11. Success!!
***

#### Issues 
- On step 9 I couldn't get the `dd` command to do anything.
- The USB I used had very slow write speed.
#### Solution
- The solution is step 8. I didnt know I was supposed To be in 
  the directory where the file is saved. I was not giving my command
  a direct path. instead a reltive one.
