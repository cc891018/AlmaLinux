#!/bin/bash
  
ipv6_conf_all_accept_redirects_check(){
        if [ "$(sysctl net.ipv6.conf.all.accept_redirects)" == "net.ipv6.conf.all.accept_redirects = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv6_conf_all_accept_redirects_check
