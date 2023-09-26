#!/bin/bash
  
dictcheck_check(){
        if [ "$(grep -o "^dictcheck = 1$" /etc/security/pwquality.conf)" == "dictcheck = 1" ]
        then
                return 0
        else
                return 1
        fi
}

dictcheck_check

