sudo apt update \
&& sudo apt install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
| sudo apt-key add - \
&& sudo apt-key fingerprint 0EBFCD88 \
&& sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable" \
&& sudo apt update \
&& sudo apt install -y \
docker-ce \
docker-ce-cli \
containerd.io \
&& docker --version 


sudo usermod -aG docker $USER


newgrp docker


sudo curl \
-L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" \
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