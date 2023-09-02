#!/bin/bash
  
unlock_time_check(){
        if grep -q "unlock_time = 900" "/etc/security/faillock.conf"
        then
		echo "Unlock time is 900"
        else
            	echo "Unlock time is not 900"
        fi
}

unlock_time_check

