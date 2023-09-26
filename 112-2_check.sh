#!/bin/bash
  
ipv6_conf_default_accept_source_route_check(){
        if [ "$(sysctl net.ipv6.conf.default.accept_source_route)" == "net.ipv6.conf.default.accept_source_route = 0" ]
        then
                return 0
        else
                return 1
        fi
}

ipv6_conf_default_accept_source_route_check
