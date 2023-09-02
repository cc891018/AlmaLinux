#!/bin/bash
  
nologin_check(){
        if grep -q "nologin" "/etc/passwd"
        then
		echo "System account is locked"
        else
                echo "System account is not locked"
        fi
}

nologin_check

