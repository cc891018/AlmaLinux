#!/bin/bash
  
PASS_MIN_DAYS_check(){
        if grep -q "^PASS_MIN_DAYS[[:blank:]]*1" "/etc/login.defs"
        then
		echo "Password minimum days is 1"
        else
                echo "Password minimum days is not 1"
        fi
}

PASS_MIN_DAYS_check
