#!/usr/bin/env bash

if type -p java; then
    echo found java executable in PATH
    echo "Java installation is not needed"
    _java=java
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo version "$version"
else
    echo "no java is detected. Started installing Amazon corretto 8"
    sudo rpm --import https://yum.corretto.aws/corretto.key 
    sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
    sudo yum install -y java-1.8.0-amazon-corretto-devel
    echo "Completed installing Amazon corretto 8"
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo version "$version"
fi


if type -p node; then
    echo found node executable in PATH
    echo "node installation is not needed"
else
    echo "no node is detected. Started installing npm "
    sudo yum -y update
    sudo curl --silent --location https://rpm.nodesource.com/setup_12.x | bash - 
    sudo yum -y install nodejs
    echo "Completed installing Node "
fi

rm -rf /home/ec2-user/simple-reactjs-app


