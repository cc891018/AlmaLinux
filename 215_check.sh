#!/bin/bash
  
ocredit_check(){
        if [ "$(grep -o "^ocredit = -1$" /etc/security/pwquality.conf)" == "ocredit = -1" ]
        then
                echo "You have already set up \"ocredit\" to -1"
        else
                echo "Please set up \"ocredit\" to -1"
        fi
}

ocredit_check

