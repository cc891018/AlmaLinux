#!/bin/bash

password-auth_enforce_for_root_check(){
        if [ "$(grep -o "enforce_for_root" /etc/authselect/password-auth)" == "enforce_for_root" ]
        then
                echo "You have already set up \"enforce_for_root\" in the \"password-auth\" file"
        else
                echo "Please set up \"enforce_for_root\" in the \"password-auth\" file"
        fi
}

password-auth_enforce_for_root_check