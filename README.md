# LFS-10.0 Compilation Tools

##Base System

###Edit Environment Varibles in base/lfs.sh and base/chroot/lfs-chroot-env.sh   

###Download all Packages  
- wget --input-file=base/wget-list --continue --directory-prefix=sources  
- or ./pkgs-dd.sh   

###Building the LFS Cross Toolchain and Temporary Tools (Chapter 5-7)   
- ./lfs-init.sh   
- ./lfs-build-tools.sh   
- rm -rf ./build   
- su root   
- source ./lfs-chroot.sh   
- lfs-chroot   
- cd chroot   
- ./lfs-chroot-init.sh   
- ./lfs-chroot-build-tools.sh  

###Building the LFS System (Chapter 8-10)
- ./lfs-chroot-build-software.sh   
- rm -rf ./build   
- ./lfs-chroot-build-kernel.sh   
- ./lfs-chroot-setup.sh    
    
###Booting the LFS System (Chapter 8-10)
- Edit grub.cfg
>> menuentry "GNU/Linux, Linux 5.8.3-lfs-10.0" {   
>>>        insmod ext2  
>>>        set root=(hd0,X)  
>>>        linux /boot/vmlinuz-5.8.3-lfs-10.0 root=/dev/sdaX ro  
>>} 

##Tools
###Edit Environment Varibles in tools/tools.sh 
  
###Download all Packages  
- wget --input-file=base/tools-wget-list --continue --directory-prefix=sources 

###Installing   
- ./tools.sh


##X
###Edit Environment Varibles in X/X.sh 
  
###Download all Packages  
- wget --input-file=base/X-wget-list --continue --directory-prefix=sources 

###Installing  
- ./X.sh
