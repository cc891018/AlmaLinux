#!/bin/bash

minlen_check(){
	if [ "$(grep -o "^minlen = 12$" /etc/security/pwquality.conf)" == "minlen = 12" ]
	then
		return 0
	else
		return 1
	fi
}
minlen_check
