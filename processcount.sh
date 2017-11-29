#!/bin/sh
#please make this make file executable using : chmod u+x .....  , download jq shell using brew or any online tool
echo "Save info about application running"


PROCESS=command
number=$(ps -ax | grep  Applications | wc -l )

if [ $number -gt 0 ]
    then
        echo Total running process $number;
        curl -H "access_token:####ACCESSTOKEN####" -H "Content-Type : application/json" --data "{ \"data\" : [{ \"process\" : \"$number\" }]}" http://api.masterdatanode.com/##APPNAME##/process/save/
fi
