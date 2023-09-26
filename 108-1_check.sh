#!/bin/bash
  
ipv4_ip_forward_check(){
        if [ "$(sysctl net.ipv4.ip_forward)" == "net.ipv4.ip_forward = 0" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_ip_forward_check
