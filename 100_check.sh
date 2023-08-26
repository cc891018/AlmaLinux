#!/bin/bash
  
ypserv_status(){
        systemctl is-enabled ypserv
        flag=$(systemctl is-enabled ypserv)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off ypserv"
        fi
}

ypserv_status
