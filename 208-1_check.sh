#!/bin/bash

system_auth_retry_check(){
        if [ ! "$(grep -o "retry" /etc/authselect/system-auth)" == "" ]
        then
                if [ ! "$(grep -o "retry=3" /etc/authselect/system-auth | awk -F '=' '{print $2}')" == "3" ]
                then
                        echo "Please set up \"retry\" to 3 in the \"system-auth\" file"
                else
                        echo "You have already set up \"retry\" to 3 in the \"system-auth\" file"
                fi
        else
                echo "Please set up \"retry\" in the \"system-auth\" file"
        fi
}
system_auth_retry_check
