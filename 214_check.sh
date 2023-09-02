#!/bin/bash
  
lcredit_check(){
        if [ "$(grep -o "^lcredit = -1$" /etc/security/pwquality.conf)" == "lcredit = -1" ]
        then
                echo "You have already set up \"lcredit\" to -1"
        else
                echo "Please set up \"lcredit\" to -1"
        fi
}

lcredit_check

