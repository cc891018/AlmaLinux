#!/bin/bash
  
ipv4_default_log_martians_check(){
        if [ "$(sysctl net.ipv4.conf.default.log_martians)" == "net.ipv4.conf.default.log_martians = 1" ]
        then
                echo "$(sysctl net.ipv4.conf.default.log_martians)"
        else
                echo "Please set up net.ipv4.conf.default.log_martians to 1"
        fi
}
ipv4_default_log_martians_check

