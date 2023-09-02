#!/bin/bash
  
squid_check(){
        if [ ! "$(dnf list installed | grep squid)" == "" ]
        then
                if [ "$(systemctl is-enabled squid)" == "disabled" ]
                then
                        echo "squid is disabled"
                else
                        echo "squid is enabled. Please disable it"
                fi
        else
                echo "squid is not installed"
        fi
}
squid_check
