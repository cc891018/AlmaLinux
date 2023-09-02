#!/bin/bash
  
CREATE_HOME_yes_check(){
        if grep -q "^CREATE_HOME[[:blank:]]*yes" "/etc/login.defs"
        then
		echo "CREATE_HOME is yes"
        else
                echo "CREATE_HOME is not yes"
        fi
}

CREATE_HOME_yes_check
