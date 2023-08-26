#!/bin/bash

rsyncd_status(){
	systemctl is-enabled rsyncd
	flag=$(systemctl is-enabled rsyncd)
	if [ "$flag" == "enabled" ]
	then
		echo "Please turn off rsyncd"
	fi
}

rsyncd_status
