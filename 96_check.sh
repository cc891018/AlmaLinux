#!/bin/bash
  
snmp_check(){
        if [ ! "$(dnf list installed | grep snmp)" == "" ]
        then
                if [ "$(systemctl is-enabled snmpd)" == "disabled" ]
                then
                        echo "snmpd is disabled"
                else
                        echo "snmpd is enabled. Please disable it"
                fi
        else
                echo "snmpd is not installed"
        fi
}
snmp_check
