#!/bin/bash
  
kdb_install_check(){
        x=$(dnf list installed | grep kbd.x86_64)

        if [[ "$x" != "" ]]
        then
		echo "kbd is installed"
        else
                echo "kdb is not installed"
        fi
}

kdb_install_check

