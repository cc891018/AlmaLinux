#!/bin/bash
  
PASS_MIN_DAYS_check(){
        if grep -q "^PASS_MIN_DAYS[[:blank:]]*1" "/etc/login.defs"
        then
		return 0
        else
                return 1
        fi
}

PASS_MIN_DAYS_check
