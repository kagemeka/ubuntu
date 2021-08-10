sudo apt update \
&& sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
| sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
&& echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
&& sudo apt update \
&& sudo apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
&& docker --version 


sudo usermod -aG docker $USER


newgrp docker


sudo curl \
  -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose \
&& sudo chmod +x /usr/local/bin/docker-compose \
&& sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose \
&& docker-compose --version \
\
&& distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
&& curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey \
| sudo apt-key add - \
&& curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list \
| sudo tee /etc/apt/sources.list.d/nvidia-docker.list \
&& curl -s -L https://nvidia.github.io/nvidia-container-runtime/experimental/$distribution/nvidia-container-runtime.list \
| sudo tee /etc/apt/sources.list.d/nvidia-container-runtime.list \
&& sudo apt update \
&& sudo apt install -y \
nvidia-docker2 \
&& sudo systemctl restart docker \
&& echo "export DOCKER_BUILDKIT=1" >> ~/.bashrc \
&& echo "export COMPOSE_DOCKER_CLI_BUILD=1" >> ~/.bashrc \
&& source ~/.bashrc \
&& systemctl restart docker

# (restart docker)