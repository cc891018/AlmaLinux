#!/bin/bash
  
ipv4_conf_default_accept_source_route_check(){
        if [ "$(sysctl net.ipv4.conf.default.accept_source_route)" == "net.ipv4.conf.default.accept_source_route = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.default.accept_source_route)"
        else
                echo "Please set up net.ipv4.conf.default.accept_source_route to 0"
        fi
}

ipv4_conf_default_accept_source_route_check
