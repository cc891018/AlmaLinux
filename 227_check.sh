#!/bin/bash
  
PASS_MAX_DAYS_check(){
        if grep -q "^PASS_MAX_DAYS[[:blank:]]90" "/etc/login.defs"
        then
		echo "Password maximum age is 90"
        else
		echo "Password maximum age is not 90"
        fi
}

PASS_MAX_DAYS_check

