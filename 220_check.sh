#!/bin/bash
  
deny_check(){
        if grep -q "deny = 5" "/etc/security/faillock.conf"
        then
		echo "Failed login attempts is 5"
        else
             	echo "Failed login attempts not 5"
        fi
}

deny_check
