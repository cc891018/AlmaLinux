#!/bin/bash
  
smb_check(){
        if [ ! "$(dnf list installed | grep smb)" == "" ]
        then
                if [ "$(systemctl is-enabled smb)" == "disabled" ]
                then
                        echo "smb is disabled"
                else
                        echo "smb is enabled. Please disable it"
                fi
        else
                echo "smb is not installed"
        fi
}
smb_check
