#!/bin/bash
  
deny_check(){
        if grep -q "deny = 5" "/etc/security/faillock.conf"
        then
		return 0
        else
             	return 1
        fi
}

deny_check
