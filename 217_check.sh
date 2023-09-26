#!/bin/bash
  
maxclassrepeat_check(){
        if [ "$(grep -o "^maxclassrepeat = 4$" /etc/security/pwquality.conf)" == "maxclassrepeat = 4" ]
        then
                return 0
        else
                return 1
        fi
}

maxclassrepeat_check

