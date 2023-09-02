#!/bin/bash
  
PASS_WARN_AGE_check(){
        if grep -q "^PASS_WARN_AGE[[:blank:]]*14" "/etc/login.defs"
        then
		echo "Password warn days is 14"
        else
		echo "Password warn days is not 14"
        fi
}

PASS_WARN_AGE_check
