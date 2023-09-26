#!/bin/bash
  
ipv4_conf_all_accept_source_route_check(){
        if [ "$(sysctl net.ipv4.conf.all.accept_source_route)" == "net.ipv4.conf.all.accept_source_route = 0" ]
        then
                return 0
        else
                return 1
        fi
}

ipv4_conf_all_accept_source_route_check
