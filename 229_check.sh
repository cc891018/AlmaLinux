#!/bin/bash
  
FAIL_DELAY_check(){
        if grep -q "^FAIL_DELAY[[:blank:]]4" "/etc/login.defs"
        then
		return 0
        else
                return 1
        fi
}

FAIL_DELAY_check

