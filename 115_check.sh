#!/bin/bash
  
ipv4_all_secure_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.all.secure_redirects)" == "net.ipv4.conf.all.secure_redirects = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_all_secure_redirects_check

