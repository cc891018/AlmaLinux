#!/bin/bash
  
GNOME_idle_check(){
        if grep -q "^idle-delay=uint32[[:blank:]]* 900" "/etc/dconf/db/local.d/00-screensaver"
        then
		return 0
        else
		return 1
        fi
}

GNOME_idle_check

