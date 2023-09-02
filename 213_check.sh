#!/bin/bash
  
ucredit_check(){
        if [ "$(grep -o "^ucredit = -1$" /etc/security/pwquality.conf)" == "ucredit = -1" ]
        then
                echo "You have already set up \"ucredit\" to -1"
        else
                echo "Please set up \"ucredit\" to -1"
        fi
}

ucredit_check

