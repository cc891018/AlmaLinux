#!/bin/bash
  
lock_check(){
        if grep -q "^lock-enabled=true" "/etc/dconf/db/local.d/00-screensaver";
        then
		return 0
        else
                return 1
        fi
}

lock_check

