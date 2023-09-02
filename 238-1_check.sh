#!/bin/bash
  
bashrc_check(){
        if grep -q "^readonly[[:blank:]]*TMOUT=900[[:blank:]]*;[[:blank:]]*export[[:blank:]]*TMOUT" "/etc/bashrc"
        then
                echo "Time out is set in the /etc/bashrc file"
        else
                echo "Time out is not set in the /etc/bashrc file"
        fi
}

bashrc_check
