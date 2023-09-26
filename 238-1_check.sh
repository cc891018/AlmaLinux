#!/bin/bash
  
bashrc_check(){
        if grep -q "^readonly[[:blank:]]*TMOUT=900[[:blank:]]*;[[:blank:]]*export[[:blank:]]*TMOUT" "/etc/bashrc"
        then
                return 0
        else
                return 1
        fi
}

bashrc_check
