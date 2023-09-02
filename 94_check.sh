#!/bin/bash

rsyncd_check(){
	if [ ! "$(dnf list installed | grep rsync)" == "" ]
	then
		if [ "$(systemctl is-enabled rsyncd)" == "disabled" ]
		then
			echo "rsyncd is disabled"
		else
			echo "rsyncd is enabled. Please disable it"
		fi
	else
		echo "rsyncd is not installed"
	fi
}
rsyncd_check
