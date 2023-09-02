#!/bin/bash
  
postlogin_check(){
        if grep -q "session[[:blank:]]*required[[:blank:]]*pam_lastlog.so[[:blank:]]*showfailed" "/etc/pam.d/postlogin"
        then
		echo "Show failed logins"
        else
    		echo "Hidden failed logins"
        fi
}

postlogin_check
    
