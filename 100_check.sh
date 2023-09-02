#!/bin/bash
  
ypserv_check(){
        if [ ! "$(dnf list installed | grep ypserv)" == "" ]
        then
                if [ "$(systemctl is-enabled ypserv)" == "disabled" ]
                then
                        echo "ypserv is disabled"
                else
                        echo "ypserv is enabled. Please disable it"
                fi
        else
                echo "ypserv is not installed"
        fi
}
ypserv_check
