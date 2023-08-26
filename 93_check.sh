#!/bin/bash

number_of_sources(){
	if [ $(cat /etc/chrony.conf | grep "^server" | wc -l) -ge 2 ]
	then
		echo "You have set up $(cat /etc/chrony.conf | grep "^server" | wc -l) NTP servers"
	else
	       echo "Please open the chrony.conf file and add at least 2 NTP server."
        fi
}

number_of_sources
