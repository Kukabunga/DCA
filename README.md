# DCA
Notes and useful files for DCA preparation

### Add user to docker group
```sudo usermod -a -G docker <user_name>```

### Change docker logging settings

1) Edit daemon file daemon.json. If file doesn't exist creat one
```sudo vi /etc/docker/daemon.json```
2) Add following settings to the file:
```
{
    "log-driver": "syslog"
}
```
3) Restart docker
```sudo systemctl restart docker```
4) Check changes
```docker info | grep logging```
