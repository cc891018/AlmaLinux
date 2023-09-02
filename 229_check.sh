#!/bin/bash
  
FAIL_DELAY_check(){
        if grep -q "^FAIL_DELAY[[:blank:]]4" "/etc/login.defs"
        then
		echo "Login fail delay is 4"
        else
                echo "Login fail delay is not 4"
        fi
}

FAIL_DELAY_check

