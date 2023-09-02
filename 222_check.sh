#!/bin/bash
  
remember_check(){
        if grep -q "remember=3" "/etc/authselect/system-auth"
        then
		echo "User most recent password remember is 3"
        else
		echo "User most recent password remember is not 3"
        fi
}

remember_check

