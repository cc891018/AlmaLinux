#!/bin/bash
  
postlogin_check(){
        if grep -q "session[[:blank:]]*required[[:blank:]]*pam_lastlog.so[[:blank:]]*showfailed" "/etc/pam.d/postlogin"
        then
		return 0
        else
    		return 1
        fi
}

postlogin_check
    
