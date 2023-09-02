#!/bin/bash
  
filter(){
        grep -v "#" "/etc/sudoers" > temp
}
NOPASSWD_check(){
                if grep -q "NOPASSWD" temp
                then
			echo "NOPASSWD is set"
                        rm -f temp
                elif grep -q "authenticate" "/etc/sudoers"
                then
			echo "authenticate is set"
                        rm -f temp
                else
                        echo "Neither NOPASSWD nor authenticate is set"
                        rm -f temp
                fi
}

filter
NOPASSWD_check
