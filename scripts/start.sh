#!/usr/bin/env bash

#start the Java service on port 8081
cd /home/ec2-user/server
sudo /usr/bin/java -jar -Dserver.port=8081 \
    *.jar > /dev/null 2> /dev/null < /dev/null &


#start the react JS  app on port 8080
cd /home/ec2-user/simple-reactjs-app
sudo npm cache clean --force
sudo rm -rf node_modules
sudo npm install
sudo npm start & sleep 5