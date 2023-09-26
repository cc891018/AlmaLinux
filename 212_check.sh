#!/bin/bash
  
dcredit_check(){
        if [ "$(grep -o "^dcredit = -1$" /etc/security/pwquality.conf)" == "dcredit = -1" ]
        then
                return 0
        else
                return 1
        fi
}

dcredit_check

