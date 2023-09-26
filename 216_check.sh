#!/bin/bash
  
difok_check(){
        if [ "$(grep -o "^difok = 3$" /etc/security/pwquality.conf)" == "difok = 3" ]
        then
                return 0
        else
                return 1
        fi
}

difok_check

