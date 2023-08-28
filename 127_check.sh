#!/bin/bash
  
sctp_conf_check(){
        if [ "$(lsmod | grep sctp)" == "" ]
        then
                echo "sctp is disabled now"
        else
                echo "Pleasse disable sctp module"
        fi
}

sctp_conf_check

