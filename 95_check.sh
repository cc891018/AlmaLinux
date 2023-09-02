#!/bin/bash

avahi_check(){
        if [ ! "$(dnf list installed | grep avahi)" == "" ]
        then
                if [ "$(systemctl is-enabled avahi-daemon)" == "disabled" ]
                then
                        echo "avahi-daemon is disabled"
                else
                        echo "avahi-daemon is enabled. Please disable it"
                fi
        else
                echo "avahi-daemon is not installed"
        fi
}
avahi_check
