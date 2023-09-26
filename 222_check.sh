#!/bin/bash
  
remember_check(){
        if grep -q "remember=3" "/etc/authselect/system-auth"
        then
		return 0
        else
		return 1
        fi
}

remember_check

