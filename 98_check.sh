#!/bin/bash
  
smb_check(){
        if [ ! "$(dnf list installed | grep smb)" == "" ]
        then
                if [ $(systemctl is-enabled smb > /dev/null 2>&1) ]
                then
			if [ "$(systemctl is-enabled smb)" == "disabled" ]
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
smb_check
