#!/bin/bash
  
dictcheck_check(){
        if [ "$(grep -o "^dictcheck = 1$" /etc/security/pwquality.conf)" == "dictcheck = 1" ]
        then
                echo "You have already set up \"dictcheck\" to 1"
        else
                echo "Please set up \"dictcheck\" to 1"
        fi
}

dictcheck_check

