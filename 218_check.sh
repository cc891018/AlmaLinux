#!/bin/bash
  
maxrepeat_check(){
        if [ "$(grep -o "^maxrepeat = 3$" /etc/security/pwquality.conf)" == "maxrepeat = 3" ]
        then
                echo "You have already set up \"maxrepeat\" to 3"
        else
                echo "Please set up \"maxrepeat\" to 3"
        fi
}

maxrepeat_check
 
