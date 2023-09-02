#!/bin/bash
  
minclass_check(){
        if [ "$(grep -o "^minclass = 4$" /etc/security/pwquality.conf)" == "minclass = 4" ]
        then
                echo "You have already set up \"minclass\" to 4"
        else
                echo "Please set up \"minclass\" to 4"
        fi
}

minclass_check
