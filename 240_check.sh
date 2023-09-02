#!/bin/bash

usermod_check(){
	if grep -q "root:x:0:0" "/etc/passwd"
	then
		echo "root GID is 0"
	else 
		echo "root GID not 0"
	fi
}

usermod_check
