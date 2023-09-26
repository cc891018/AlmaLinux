#!/bin/bash

ipv4_all_log_martians_check(){
        if [ "$(sysctl net.ipv4.conf.all.log_martians)" == "net.ipv4.conf.all.log_martians = 1" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_all_log_martians_check

