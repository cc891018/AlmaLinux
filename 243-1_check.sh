#!/bin/bash

pam_check(){
	if grep -q "^auth[[:blank:]]*required[[:blank:]]*pam_wheel.so[[:blank:]]*use_uid" "/etc/pam.d/su"
	then
		echo "pam_wheel.so is set"
	else 
		echo "pam_wheel.so not set"
	fi
}

pam_check
