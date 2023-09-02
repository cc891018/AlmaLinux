#!/bin/bash
  
maxclassrepeat_check(){
        if [ "$(grep -o "^maxclassrepeat = 4$" /etc/security/pwquality.conf)" == "maxclassrepeat = 4" ]
        then
                echo "You have already set up \"maxclassrepeat\" to 4"
        else
                echo "Please set up \"maxclassrepeat\" to 4"
        fi
}

maxclassrepeat_check

