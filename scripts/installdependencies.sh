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


