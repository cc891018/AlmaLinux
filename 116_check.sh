#!/bin/bash
  
ipv4_default.secure_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.default.secure_redirects)" == "net.ipv4.conf.default.secure_redirects = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.default.secure_redirects)"
        else
                echo "Please set up net.ipv4.conf.default.secure_redirects to 0"
        fi
}
ipv4_default.secure_redirects_check

