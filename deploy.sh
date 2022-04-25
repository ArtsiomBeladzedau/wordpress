#!/bin/sh

docker-compose up -d
sleep 30
status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8200/test1.html)
    if [ "$status_code" -ne 200 ] ; then
        echo 'Need git revert HEAD'
    else
     echo 'job ok'
     exit 0
   fi
