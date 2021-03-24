# LFS-10.0 Compilation Tools

**Edit base/lfs.sh and base/chroot/lfs-chroot-env.sh**
> Edit Environment Varibles:  
> LFS, PKGS, LFS_TOOLS, MKOPT, LFS_TGT . . . 

**Host System Requirements**
> Comparing the Output of `base/version-check.sh` with "http://www.linuxfromscratch.org/lfs/view/stable/chapter02/hostreqs.html" 

**Download all Packages**
> `wget --input-file=base/wget-list --continue --directory-prefix=sources`
> or ./pkgs-dd.sh

**Building the LFS Cross Toolchain and Temporary Tools (Chapter 5-7)**
> ./lfs-init.sh   
> ./lfs-build-tools.sh   
> source ./lfs-chroot.sh   
> lfs-chroot   
> cd chroot   
> ./lfs-chroot-init.sh   
> ./lfs-chroot-build-tools.sh  

**Building the LFS System (Chapter 8-10)**
> ./lfs-chroot-build-software.sh   
> ./lfs-chroot-build-kernel.sh   
> ./lfs-chroot-setup.sh    
    
>  edit grub.cfg   
>>    menuentry "GNU/Linux, Linux 5.8.3-lfs-10.0" {   
>>        insmod ext2  
>>        set root=(hd0,X) or set root="hd0,gptX"  
>>        linux /boot/vmlinuz-5.8.3-lfs-10.0 root=/dev/sdaX ro  
>>    } 
