#!/bin/bash
  
nologin_check(){
        if grep -q "nologin" "/etc/passwd"
        then
		return 0
        else
                return 1
        fi
}

nologin_check

