#!/bin/bash
  
maxlogins_check(){
        if grep -q "^\*[[:blank:]]*hard[[:blank:]]*maxlogins[[:blank:]]*10" "/etc/security/limits.conf"
        then
		echo "maxlogins is set"
        else
                echo "maxlogins not set"
        fi
}

maxlogins_check
