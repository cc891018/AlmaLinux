#!/bin/bash
  
kdb_install_check(){
        x=$(dnf list installed | grep kbd.x86_64)

        if [[ "$x" != "" ]]
        then
		return 0
        else
                return 1
        fi
}

kdb_install_check

