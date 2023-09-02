#!/bin/bash
  
dcredit_check(){
        if [ "$(grep -o "^dcredit = -1$" /etc/security/pwquality.conf)" == "dcredit = -1" ]
        then
                echo "You have already set up \"dcredit\" to -1"
        else
                echo "Please set up \"dcredit\" to -1"
        fi
}

dcredit_check

