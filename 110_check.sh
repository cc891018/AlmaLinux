#!/bin/bash
  
ipv4_conf_default_send_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.default.send_redirects)" == "net.ipv4.conf.default.send_redirects = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_conf_default_send_redirects_check

