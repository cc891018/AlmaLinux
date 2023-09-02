#!/bin/bash

UMASK_check(){
	if grep -q "^UMASK[[:blank:]]*027" "/etc/login.defs"
	then
		echo "UMASK is 027"
	else
		echo "UMASK not 027"
	fi
}

UMASK_check
