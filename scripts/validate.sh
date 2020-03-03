#!/usr/bin/env bash

while [ true ]
do
    if [ "$(curl -s http://localhost:80/hello)" = 'UP' ]
    then
        exit 0
    else
        echo "check server is running?"
        sleep 3s
    fi
done