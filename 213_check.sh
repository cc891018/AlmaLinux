#!/bin/bash
  
ucredit_check(){
        if [ "$(grep -o "^ucredit = -1$" /etc/security/pwquality.conf)" == "ucredit = -1" ]
        then
                return 0
        else
                return 1
        fi
}

ucredit_check

