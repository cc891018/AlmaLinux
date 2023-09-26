#!/bin/bash
  
lcredit_check(){
        if [ "$(grep -o "^lcredit = -1$" /etc/security/pwquality.conf)" == "lcredit = -1" ]
        then
                return 0
        else
                return 1
        fi
}

lcredit_check

