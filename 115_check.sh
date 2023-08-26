#!/bin/bash
  
ipv4_all_secure_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.all.secure_redirects)" == "net.ipv4.conf.all.secure_redirects = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.all.secure_redirects)"
        else
                echo "Please set up net.ipv4.conf.all.secure_redirects to 0"
        fi
}
ipv4_all_secure_redirects_check

