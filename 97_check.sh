#!/bin/bash
  
squid_status(){
        systemctl is-enabled squid
        flag=$(systemctl is-enabled squid)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off squid"
        fi
}

squid_status

