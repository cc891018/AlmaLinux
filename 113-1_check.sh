#!/bin/bash
  
ipv4_conf_all_accept_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.all.accept_redirects)" == "net.ipv4.conf.all.accept_redirects = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.all.accept_redirects)"
        else
                echo "Please set up net.ipv4.conf.all.accept_redirects to 0"
        fi
}
ipv4_conf_all_accept_redirects_check
