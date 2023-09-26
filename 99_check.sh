#!/bin/bash
  
vsftpd_check(){
        if [ ! "$(dnf list installed | grep vsftpd)" == "" ]
        then
                if [ $(systemctl is-enabled vsftpd > /dev/null 2>&1) ]
                then
			if [ "$(systemctl is-enabled vsftpd)" == "disabled" ]
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
vsftpd_check
