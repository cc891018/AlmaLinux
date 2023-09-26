#!/bin/bash
  
system_auth_enforce_for_root_check(){
        if [ "$(grep -o "enforce_for_root" /etc/authselect/system-auth)" == "enforce_for_root" ]
        then
                echo "You have already set up \"enforce_for_root\" in the \"system-auth\" file"
        else
                echo "Please set up \"enforce_for_root\" in the \"system-auth\" file"
        fi
}
system_auth_enforce_for_root_check
