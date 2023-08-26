#!/bin/bash
  
kdump_status(){
        systemctl is-enabled kdump
        flag=$(systemctl is-enabled kdump)
        if [ "$flag" == "disabled" ]
        then
                echo "Please turn on kdump"
        fi
}

kdump_status

