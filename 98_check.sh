#!/bin/bash
  
smb_status(){
        systemctl is-enabled smb
        flag=$(systemctl is-enabled smb)
        if [ "$flag" == "enabled" ]
        then
                echo "Please turn off smb"
        fi
}

smb_status
