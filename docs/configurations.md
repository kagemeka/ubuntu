# Ubuntu Configurations


# ssh config
- To connect to remote servers over ssh easily, you can set the remote informations in `/home/<user name>/.ssh/config` file.




# sudo without password

open settin file with the command below and add  `<user> ALL=(ALL) NOPASSWD:ALL`
```sh
sudo visudo
```

if `/etc/sudoers` is broken, then try this. 
```sh
$ pkexec chmod 755 /etc
$ pkexec vi /etc/sudoers
```



# Terminal Preferences


## Terminal Preferences 
- profile name: `black`
- initial terminal size `16` x `4`
- custom font size: `6`
- cursor shape: `Block`
- cursor blinking: `Enabled`
- Terminal bell: `off`
- Default color: Text: `#FFFFFF`, Background: `#000000`
- use transparent background: `on`

## dump/load
```sh
$ dconf dump /org/gnome/terminal/ > terminal-settings.ini
$ dconf load /org/gnome/terminal/ < terminal-settings.ini
```



# Entire Preferences


## dump/load
```sh
$ dconf dump / > settings.ini
$ dconf load / < settings.ini
```




# Gnome Extensions


### gnome extensions 
befora installing, `disable ad-blocking extensions (ublock origin, ...)`

- [extensions manager](https://extensions.gnome.org/extension/1036/extensions/)
- [WinTile](https://extensions.gnome.org/extension/1723/wintile-windows-10-window-tiling-for-gnome/)
- [Hide Top Bar](https://extensions.gnome.org/extension/723/pixel-saver/)
- [Pixel Saver](https://extensions.gnome.org/extension/723/pixel-saver/)