#!/bin/bash
  
unlock_time_check(){
        if grep -q "unlock_time = 900" "/etc/security/faillock.conf"
        then
		return 0
        else
            	return 1
        fi
}

unlock_time_check

