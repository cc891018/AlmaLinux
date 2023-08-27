#!/bin/bash
  
ipv4_conf_default_send_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.default.send_redirects)" == "net.ipv4.conf.default.send_redirects = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.default.send_redirects)"
        else
                echo "Please set up net.ipv4.conf.default.send_redirects to 0"
        fi
}
ipv4_conf_default_send_redirects_check

