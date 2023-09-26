#!/bin/bash
  
kdump_check(){
        if [ ! "$(dnf list installed | grep 'kexec-tools')" == "" ]
        then
                if [ $(systemctl is-enabled kdump) ]
                then
                        if [ "$(systemctl is-enabled kdump)" == "disabled" ]
                        then
                                return 1
                        else
                                return 0
                        fi
                else
                        return 1
                fi
        else
                return 1
        fi

}
kdump_check
