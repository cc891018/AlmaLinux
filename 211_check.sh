#!/bin/bash
  
minclass_check(){
        if [ "$(grep -o "^minclass = 4$" /etc/security/pwquality.conf)" == "minclass = 4" ]
        then
                return 0
        else
                return 1
        fi
}

minclass_check
