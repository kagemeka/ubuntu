# Ubuntu command tips








# resolve ec2 public key error
$ sudo chmod 600 <public key>.pem 

# low power 
$ pm-powersave true
$ pm-powersave false # off

# low power 2
$ tlp start
$ tlp stop



# mount external volume ex)
$ mount -t ext4 /dev/sda1 /var/lib/docker
# on startup 
$ echo '/dev/sda1 /var/lib/docker ext4 defaults 0 1' >> /etc/fstab


