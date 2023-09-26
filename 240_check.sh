#!/bin/bash

usermod_check(){
	if grep -q "root:x:0:0" "/etc/passwd"
	then
		return 0
	else 
		return 1
	fi
}

usermod_check
