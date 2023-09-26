#!/bin/bash

umask_check(){
	if grep -q "[[:blank:]]*umask[[:blank:]]*027" "/etc/profile"
	then
		return 0
	else 
		return 1
	fi
}

umask_check
