#!/bin/bash
#DES: création user specific pour dokcer

groupadd -g 500000 dockremap
useradd -u 500000 -g dockremap -s /bin/false dockremap

echo "dockremap:500000:65536" >> /etc/subuid
echo "dockremap:500000:65536" >> /etc/subgid

echo "
 {
  \"userns-remap\":\"default\"
 }
" > /etc/docker/daemon.json

sytemctl daemon-reload && systemctl restart docker

