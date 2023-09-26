#!/bin/bash

xinetd_check(){
	if [ ! "$(dnf list installed | grep -o 'xinetd.x86_64')" == "xinetd.x86_64" ]
	then
		return 0
	else
		return 1
	fi
}

xinetd_check
