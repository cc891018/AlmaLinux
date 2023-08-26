#!/bin/bash
  
snmpd_status(){
        systemctl is-enabled snmpd
        flag=$(systemctl is-enabled snmpd)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off snmpd"
        fi
}

snmpd_status

