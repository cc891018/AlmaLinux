#!/bin/bash
  
rds_conf_check(){
        if [ "$(lsmod | grep rds)" == "" ]
        then
                echo "rds is disabled now"
        else
                echo "Pleasse disable rds module"
        fi
}

rds_conf_check

