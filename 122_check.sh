#!/bin/bash
  
ipv4_conf_default_rp_filter_check(){
        if [ "$(sysctl net.ipv4.conf.default.rp_filter)" == "net.ipv4.conf.default.rp_filter = 1" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_conf_default_rp_filter_check

