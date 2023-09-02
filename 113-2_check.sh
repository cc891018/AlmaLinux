#!/bin/bash
  
ipv6_conf_all_accept_redirects_check(){
        if [ "$(sysctl net.ipv6.conf.all.accept_redirects)" == "net.ipv6.conf.all.accept_redirects = 0" ]
        then
                echo "$(sysctl net.ipv6.conf.all.accept_redirects)"
        else
                echo "Please set up net.ipv6.conf.all.accept_redirects to 0"
        fi
}
ipv6_conf_all_accept_redirects_check
