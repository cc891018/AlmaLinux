#!/bin/bash

gui_setting_lock_check(){
	if grep -qE "^/org/gnome/desktop/session/idle-delay" "/etc/dconf/db/local.d/locks/session"
	then
		if grep -qE "^/org/gnome/desktop/screensaver/lock-enabled" "/etc/dconf/db/local.d/locks/session"
        	then
			if grep -qE "^/org/gnome/desktop/screensaver/lock-delay" "/etc/dconf/db/local.d/locks/session"
        		then
				if grep -qE "^/org/gnome/desktop/lockdown/disable-lock-screen" "/etc/dconf/db/local.d/locks/session"
        			then
					return 0
				fi
			fi
		fi
	fi
	return 1
}

gui_setting_lock_check

