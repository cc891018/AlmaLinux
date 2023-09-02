#!/bin/bash

umask_check(){
	if grep -q "[[:blank:]]*umask[[:blank:]]*027" "/etc/profile"
	then
		echo "umask is 027"
	else 
		echo "umask not 027"
	fi
}

umask_check
