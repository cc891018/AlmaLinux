#!/bin/bash
  
ipv4_conf_default_accept_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.default.accept_redirects)" == "net.ipv4.conf.default.accept_redirects = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_conf_default_accept_redirects_check
