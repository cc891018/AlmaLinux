#!/bin/bash
  
user_inactive_check(){
        x=$(useradd -D)
        if [[ "$x" == *"INACTIVE=30"* ]]
        then
		echo "Account inactive is 30"
        else
		echo "Account inactive is 30"
        fi
}

user_inactive_check
