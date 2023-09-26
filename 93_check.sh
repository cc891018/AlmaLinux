#!/bin/bash

number_of_sources(){
	if [ $(cat /etc/chrony.conf | grep "^server" | wc -l) -ge 2 ]
	then
		return 0
	else
	     	return 1
        fi
}

number_of_sources
