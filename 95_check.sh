#!/bin/bash
  
avahi-daemon_status(){
        systemctl is-enabled avahi-daemon
        flag=$(systemctl is-enabled avahi-daemon)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off avahi-daemon"
        fi
}

avahi-daemon_status

