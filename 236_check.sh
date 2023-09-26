#!/bin/bash
  
AutomaticLogin_check(){
        if grep -q "^AutomaticLoginEnable=false" "/etc/gdm/custom.conf"
        then
		return 0
        else
                return 1
        fi
}

AutomaticLogin_check
