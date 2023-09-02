#!/bin/bash
  
ipv4_ip_forward_check(){
        if [ "$(sysctl net.ipv4.ip_forward)" == "net.ipv4.ip_forward = 0" ]
        then
                echo "$(sysctl net.ipv4.ip_forward)"
        else
                echo "Please set up net.ipv4.ip_forward to 0"
        fi
}
ipv4_ip_forward_check
