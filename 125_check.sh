#!/bin/bash
  
ipv6_conf_default_accept_ra_check(){
        if [ "$(sysctl net.ipv6.conf.default.accept_ra)" == "net.ipv6.conf.default.accept_ra = 0" ]
        then
                echo "$(sysctl net.ipv6.conf.default.accept_ra)"
        else
                echo "Please set up net.ipv6.conf.default.accept_ra to 0"
        fi
}
ipv6_conf_default_accept_ra_check

