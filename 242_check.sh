#!/bin/bash

UMASK_check(){
	if grep -q "^UMASK[[:blank:]]*027" "/etc/login.defs"
	then
		return 0
	else
		return 1
	fi
}

UMASK_check
