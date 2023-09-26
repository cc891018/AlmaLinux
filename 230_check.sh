#!/bin/bash
  
CREATE_HOME_yes_check(){
        if grep -q "^CREATE_HOME[[:blank:]]*yes" "/etc/login.defs"
        then
		return 0
        else
                return 1
        fi
}

CREATE_HOME_yes_check
