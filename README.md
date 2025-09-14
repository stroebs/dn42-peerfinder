## dn42-peerfinder

Minimal docker container to run the DN42 PingFinder script. Just set the UUID variable and run it.  

Designed to run on a MikroTik router because getting PingFinder to work using ROS scripting is painful.


```
/container/envs/add name=dn42-peerfinder key=UUID value=<YOUR_UUID>
/container/add remote-image=stroebs/dn42-peerfinder:latest envlist=dn42-peerfinder interface=veth1
```
