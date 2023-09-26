#!/bin/bash

profile_check(){
        if grep -q "^readonly[[:blank:]]*TMOUT=900[[:blank:]]*;[[:blank:]]*export[[:blank:]]*TMOUT" "/etc/profile"
        then
                return 0
        else
                return 1
        fi
}

profile_check
