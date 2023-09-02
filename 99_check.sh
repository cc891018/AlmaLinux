#!/bin/bash
  
vsftpd_check(){
        if [ ! "$(dnf list installed | grep vsftpd)" == "" ]
        then
                if [ "$(systemctl is-enabled vsftpd)" == "disabled" ]
                then
                        echo "vsftpd is disabled"
                else
                        echo "vsftpd is enabled. Please disable it"
                fi
        else
                echo "vsftpd is not installed"
        fi
}
vsftpd_check
