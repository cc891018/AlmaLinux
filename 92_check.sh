#!/bin/bash

is_installed(){
	if [ ! "$(dnf list installed | grep -o "xinetd.x86_64")" == "xinetd.x86_64" ]
	then
		echo "No"
		return 1
	else
		echo "Yes"
		return 0
	fi
}

is_installed
