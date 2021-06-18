# Ubuntu command tips



```sh
# copy a file to clipboard
$ xclip -sel c < <file>

# kill pid
$ ps -fA | grep <pattern>
$ kill <pid>

# use gui from docker
$ xhost +

# tar extract
$ tar -czvf <dist>.tar.gz <source>

# symbolic link
$ ln -s <src_path> <link_path> 

# hear mic loopback  
$ pactl load-module module-loopback latency_msec=1
$ pactl unload-module module-loopback

# resolve ec2 public key error
$ sudo chmod 600 <public key>.pem 

# low power 
$ pm-powersave true
$ pm-powersave false # off

# low power 2
$ tlp start
$ tlp stop

# shutdown
$ poweroff 

# restart 
$ reboot


# mount external volume ex)
$ mount -t ext4 /dev/sda1 /var/lib/docker
# on startup 
$ echo '/dev/sda1 /var/lib/docker ext4 defaults 0 1' >> /etc/fstab


# current working directory
$ echo $PWD
$ pwd
$ dirs

```