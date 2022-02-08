# Docker setup

## Installation

```bash
$ ./install docker.sh
$ ./set_user_group.sh
$ ./newgrp.sh
$ ./install_docker_compose.sh
$ ./enable_docker_buildkit.sh
```

### references
- https://docs.docker.com/engine/install/ubuntu/
- https://docs.docker.com/engine/install/linux-postinstall/
- https://docs.docker.com/compose/install/


## Use cuda inside containers.

```bash
$ ./install_nvidia_docker.sh
```
### references
- https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installing-on-ubuntu-and-debian
