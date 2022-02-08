echo "export DOCKER_BUILDKIT=1" >> ~/.bashrc \
&& echo "export COMPOSE_DOCKER_CLI_BUILD=1" >> ~/.bashrc \
&& source ~/.bashrc \
&& systemctl restart docker
