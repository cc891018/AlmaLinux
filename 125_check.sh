#!/bin/bash
  
ipv6_conf_default_accept_ra_check(){
        if [ "$(sysctl net.ipv6.conf.default.accept_ra)" == "net.ipv6.conf.default.accept_ra = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv6_conf_default_accept_ra_check

