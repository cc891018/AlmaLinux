#!/bin/bash

ipv6_conf_all_forwarding_check(){
        if [ "$(sysctl net.ipv6.conf.all.forwarding)" == "net.ipv6.conf.all.forwarding = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv6_conf_all_forwarding_check
