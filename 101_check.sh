#!/bin/bash
  
kdump_check(){
        if [ ! "$(dnf list installed | grep kexec-tools)" == "" ]
        then
                if [ "$(systemctl is-enabled kdump)" == "enabled" ]
                then
                        echo "kdump is enabled"
                else
                        echo "kdump is disabled. Please enable it"
                fi
        else
                echo "kdump is not installed. Please install kexec-tools"
        fi
}
kdump_check
