#!/bin/bash

ipv6_conf_all_forwarding_check(){
        if [ "$(sysctl net.ipv6.conf.all.forwarding)" == "net.ipv6.conf.all.forwarding = 0" ]
        then
                echo "$(sysctl net.ipv6.conf.all.forwarding)"
        else
                echo "Please set up net.ipv6.conf.all.forwarding to 0"
        fi
}
ipv6_conf_all_forwarding_check
