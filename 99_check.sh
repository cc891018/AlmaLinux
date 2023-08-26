#!/bin/bash
  
vsftpd_status(){
        systemctl is-enabled vsftpd
        flag=$(systemctl is-enabled vsftpd)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off vsftpd"
        fi
}

vsftpd_status

