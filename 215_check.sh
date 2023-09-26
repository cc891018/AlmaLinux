#!/bin/bash
  
ocredit_check(){
        if [ "$(grep -o "^ocredit = -1$" /etc/security/pwquality.conf)" == "ocredit = -1" ]
        then
                return 0
        else
                return 1
        fi
}

ocredit_check

