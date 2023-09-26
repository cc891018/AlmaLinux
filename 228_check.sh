#!/bin/bash
  
user_inactive_check(){
        x=$(useradd -D)
        if [[ "$x" == *"INACTIVE=30"* ]]
        then
		return 0
        else
		return 1
        fi
}

user_inactive_check
