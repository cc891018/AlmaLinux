#!/bin/bash

profile_check(){
        if grep -q "^readonly[[:blank:]]*TMOUT=900[[:blank:]]*;[[:blank:]]*export[[:blank:]]*TMOUT" "/etc/profile"
        then
                echo "Time out is set in the /etc/profile file"
        else
                echo "Time out is not set in the /etc/profile file"
        fi
}

profile_check
