#!/bin/bash
  
lock_check(){
        if grep -q "^lock-enabled=false" "/etc/dconf/db/local.d/00-screensaver";
        then
		echo "screensaver is set"
        else
                echo "screensaver is not set"
        fi
}

lock_check

