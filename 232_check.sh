#!/bin/bash
  
maxlogins_check(){
        if grep -q "^\*[[:blank:]]*hard[[:blank:]]*maxlogins[[:blank:]]*10" "/etc/security/limits.conf"
        then
		return 0
        else
                return 1
        fi
}

maxlogins_check
