#!/bin/bash
  
maxrepeat_check(){
        if [ "$(grep -o "^maxrepeat = 3$" /etc/security/pwquality.conf)" == "maxrepeat = 3" ]
        then
                return 0
        else
                return 1
        fi
}

maxrepeat_check
 
