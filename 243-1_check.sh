#!/bin/bash

pam_check(){
	if grep -q "^auth[[:blank:]]*required[[:blank:]]*pam_wheel.so[[:blank:]]*use_uid" "/etc/pam.d/su"
	then
		return 0
	else 
		return 1
	fi
}

pam_check
