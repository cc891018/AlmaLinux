#!/bin/bash
  
filter(){
	grep -v "#" "/etc/sudoers" > temp
}
check_NOPASSWD(){
		if grep -q "NOPASSWD" temp;
			then
			rm -f temp
			return 1
		elif grep -q "authenticate" "/etc/sudoers";
		then
			rm -f temp
			return 1
		else
			rm -f temp
			return 0
		fi
}

filter
check_NOPASSWD
