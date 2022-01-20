# sudo configurations

## sudo without password

open setting file with the command below.
```sh
$ sudo visudo
```

add a line `<user> ALL=(ALL) NOPASSWD:ALL` to the end of the file.


If `/etc/sudoers` is broken, then try this. 
```sh
$ pkexec chmod 755 /etc
$ pkexec vi /etc/sudoers
```
