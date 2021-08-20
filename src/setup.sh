sudo add-apt-repository -y ppa:obsproject/obs-studio \
&& sudo add-apt-repository -y ppa:ubuntuhandbook1/audacity \
&& sudo apt update \
&& sudo apt install -y \
apt-file \
aptitude \
audacity \
bash-completion \
cgroup-tools \
chrome-gnome-shell \
curl \
ffmpeg \
figlet \
git \
git-flow \
gnome-control-center \
gnome-online-accounts \
gnome-system-monitor \
gnome-shell-extension-autohidetopbar \
gnome-shell-extension-pixelsaver \
gnome-tweaks \
gparted \
ibus-mozc \
neovim \
nvidia-cuda-toolkit \
nvidia-utils-460 \
nvidia-driver-460 \
obs-studio \
pavucontrol \
screenkey \
ssh \
tlp \
tree \
usb-creator-gtk \
v4l2loopback-dkms \
vlc \
wget \
&& wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb \
&& sudo apt install -y ./google-chrome-unstable_current_amd64.deb \
&& rm google-chrome-unstable_current_amd64.deb \
&& wget https://github.com/microsoft/VoTT/releases/download/v2.2.0/vott-2.2.0-linux.snap \
&& sudo snap install vott-2.2.0-linux.snap --dangerous \
&& sudo rm vott* \
&& sudo apt-file update \
&& sudo aptitude install -y pm-utils \
&& sudo snap install --classic code \
&& sudo snap install gimp \
&& echo "alias open='xdg-open .'" >> ~/.bashrc \
&& echo "alias settings=gnome-control-center" >> ~/.bashrc \
&& echo "alias system-monitor=gnome-system-monitor" >> ~/.bashrc \
&& echo "PS1='\w\$ '" >> ~/.bashrc \
&& echo "PS1='\W\$ '" >> ~/.bashrc \
&& echo "PS1='\$ '" >> ~/.bashrc \
&& echo 'source /etc/profile.d/bash_completion.sh' >> ~/.bashrc \
&& echo "bind '\"\t\":menu-complete'" >> ~/.bashrc \
&& source ~/.bashrc \
&& gsettings set org.gnome.shell.extensions.desktop-icons show-trash false \
&& gsettings set org.gnome.shell.extensions.desktop-icons show-home false \
&& gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false \
&& gsettings set org.gnome.Terminal.Legacy.Settings headerbar false \
&& gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 7 \
&& gsettings set org.gnome.desktop.peripherals.keyboard delay 255 \
&& gsettings set org.gnome.desktop.interface cursor-blink-time 255 \
&& gsettings set org.gnome.desktop.peripherals.mouse speed 1.0 \
&& gsettings set org.gnome.desktop.screensaver lock-delay 0 \
&& gsettings set org.gnome.desktop.screensaver lock-enabled false \
&& gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false \
&& gsettings set org.gnome.desktop.sound allow-volume-above-100-percent false \
&& gsettings set org.gnome.desktop.wm.preferences num-workspaces 2 \
&& gsettings set org.gnome.settings-daemon.plugins.power idle-dim false \
&& gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 511 \
&& gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'suspend' \
&& gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 511 \
&& gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend' \
&& gnome-extensions enable pixel-saver@deadalnix.me \
&& curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
&& unzip awscliv2.zip \
&& sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin \
&& rm -r aws*