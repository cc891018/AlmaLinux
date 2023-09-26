#!/bin/bash

avahi_check(){
        if [ ! "$(dnf list installed | grep avahi)" == "" ]
        then
                if [ $(systemctl is-enabled avahi-daemon > /dev/null 2>&1) ]
                then
			if [ $(systemctl is-enabled avahi-daemon) == "disabled" ]
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
avahi_check
