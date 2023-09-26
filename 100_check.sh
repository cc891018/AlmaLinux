#!/bin/bash
  
ypserv_check(){
        if [ ! "$(dnf list installed | grep ypserv)" == "" ]
        then
		if [ $(systemctl is-enabled ypserv > /dev/null 2>&1) ]
                then
			if [ "$(systemctl is-enabled ypserv)" == "disabled" ]
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
ypserv_check
