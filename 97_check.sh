#!/bin/bash
  
squid_check(){
        if [ ! "$(dnf list installed | grep squid)" == "" ]
        then
                if [ $(systemctl is-enabled squid > /dev/null 2>&1) ]
                then
			if [ "$(systemctl is-enabled squid)" == "disabled" ]
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
squid_check
