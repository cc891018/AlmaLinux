#!/bin/bash
  
PASS_MAX_DAYS_check(){
        if grep -q "^PASS_MAX_DAYS[[:blank:]]*90" "/etc/login.defs"
        then
		return 0
        else
		return 1
        fi
}

PASS_MAX_DAYS_check

