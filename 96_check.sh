#!/bin/bash
  
snmp_check(){
        if [ ! "$(dnf list installed | grep snmp)" == "" ]
        then
                if [ $(systemctl is-enabled snmpd > /dev/null 2>&1) ]
                then
			if [ "$(systemctl is-enabled snmpd)" == "disabled" ]
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
snmp_check
