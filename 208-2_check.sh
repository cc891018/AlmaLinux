#!/bin/bash

password_auth_retry_check(){
        if [ ! "$(grep -o "retry" /etc/authselect/password-auth)" == "" ]
        then
                if [ ! "$(grep -o "retry=3" /etc/authselect/password-auth | awk -F '=' '{print $2}')" == "3" ]
                then
                        echo "Please set up \"retry\" to 3 in the \"password-auth\" file"
                else
                        echo "You have already set up \"retry\" to 3 in the \"password-auth\" file"
                fi
        else
                echo "Please set up \"retry\" in the \"password-auth\" file"
        fi
}


password_auth_retry_check
