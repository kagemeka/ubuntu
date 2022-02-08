# Nvidia Driver Setup

## install nvidia-cuda-toolkit
```sh
$ sudo apt install -y nvidia-cuda-toolkit
```

## install nvidia-driver
Check latest driver version first.
```sh
$ sudo ubuntu-drivers devices
```

install latest version  
example,
```sh
$ sudo apt install -y \
  nvidia-utils-470 \
  nvidia-driver-470
```

(reboot OS)

`Don't` use `autoinstal` command.
```sh
$ sudo ubuntu-drivers autoinstall
```

while installation, set `secure boot password` if needed.
it's used at next boot time.(select `Enroll OK` and enter the password.)

Check whether components have been installed succesfully.
```sh
$ nvidia-smi
```


## references
- https://www.cyberciti.biz/faq/ubuntu-linux-install-nvidia-driver-latest-proprietary-driver/