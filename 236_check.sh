#!/bin/bash
  
AutomaticLogin_check(){
        if grep -q "^AutomaticLoginEnable=false" "/etc/gdm/custom.conf"
        then
		echo "AutomaticLogin is closed"
        else
                echo "AutomaticLogin not closed"
        fi
}

AutomaticLogin_check
