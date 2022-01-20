# Dconf


## dump/load

### entire settings
```sh
$ dconf dump / > settings.ini
$ dconf load / < settings.ini
```

### only certain section (in case of terminal)
```sh
$ dconf dump /org/gnome/terminal/ > dconf-terminal.ini
$ dconf load /org/gnome/terminal/ < dconf-terminal.ini
```


# references


