#!/usr/bin/env bash

sudo killall java
exit 0
sudo killall node
exit 0
cd /home/ec2-user/server/target
sudo rm -rf *.jar