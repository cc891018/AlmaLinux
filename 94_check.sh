#!/bin/bash

rsyncd_check(){
	if [ ! "$(dnf list installed | grep 'rsync')" == "" ]
	then
		if [ $(systemctl is-enabled rsyncd > /dev/null 2>&1) ]
		then
			if [ $(systemctl is-enabled rsyncd) == "disabled" ]
			then
				return 0
			else
				return 1
			fi
		else
			return 0
		fi
	else
		return 0
	fi
}
rsyncd_check
