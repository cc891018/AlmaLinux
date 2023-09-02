#!/bin/bash
  
GNOME_idle_check(){
        if grep -q "^idle-delay=uint32[[:blank:]]* 900" "/etc/dconf/db/local.d/00-screensaver"
        then
		echo "idle-delay is set"
        else
		echo "screensaver is not set"
        fi
}

GNOME_idle_check

