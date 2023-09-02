#!/bin/bash
  
difok_check(){
        if [ "$(grep -o "^difok = 3$" /etc/security/pwquality.conf)" == "difok = 3" ]
        then
                echo "You have already set up \"difok\" to 3"
        else
                echo "Please set up \"difok\" to 3"
        fi
}

difok_check

