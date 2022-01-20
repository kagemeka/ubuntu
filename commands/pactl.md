# pactl
loop-back sound

installation
```bash
$ sudo apt install pavucontrol
```

start 
```bash 
$ pactl load-module module-loopback latency_msec=1
```

stop 
```bash
$ pactl unload-module module-loopback
```


## references
- https://askubuntu.com/questions/123798/how-to-hear-my-voice-in-speakers-with-a-mic
- https://manpages.ubuntu.com/manpages/xenial/man1/pactl.1.html