#!/bin/bash
  
PASS_WARN_AGE_check(){
        if grep -q "^PASS_WARN_AGE[[:blank:]]*14" "/etc/login.defs"
        then
		return 0
        else
		return 1
        fi
}

PASS_WARN_AGE_check
