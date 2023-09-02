#!/bin/bash

minlen_check(){
	if [ "$(grep -o "^minlen = 12$" /etc/security/pwquality.conf)" == "minlen = 12" ]
	then
		echo "You have already set up \"minlen\" to 12"
	else
		echo "Please set up \"minlen\" to 12"
	fi
}
minlen_check
