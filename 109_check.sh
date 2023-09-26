#!/bin/bash
  
ipv4_conf_all_send_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.all.send_redirects)" == "net.ipv4.conf.all.send_redirects = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_conf_all_send_redirects_check

