# Ubuntu Configurations


# ssh config
- To connect to remote servers over ssh easily, you can set the remote informations in `/home/<user name>/.ssh/config` file.




## sudo without password

open settin file with the command below and add  `<user> ALL=(ALL) NOPASSWD:ALL`
```sh
sudo visudo
```

if `/etc/sudoers` is broken, then try this. 
```sh
$ pkexec chmod 755 /etc
$ pkexec vi /etc/sudoers
```
