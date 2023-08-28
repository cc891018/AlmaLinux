#!/bin/bash
  
tipc_conf_check(){
        if [ "$(lsmod | grep tipc)" == "" ]
        then
                echo "tipc is disabled now"
        else
                echo "Pleasse disable tipc module"
        fi
}

tipc_conf_check

