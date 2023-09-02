#!/bin/bash

xinetd_check(){
	if [ ! "$(dnf list installed | grep -o "xinetd.x86_64")" == "xinetd.x86_64" ]
	then
		echo "xinetd is not installed"
	else
		echo "xinetd is installed.Please remove it"
	fi
}

xinetd_check
