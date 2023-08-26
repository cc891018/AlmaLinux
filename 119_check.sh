#!/bin/bash
  
ipv4_icmp_echo_ignore_broadcasts_check(){
        if [ "$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)" == "net.ipv4.icmp_echo_ignore_broadcasts = 1" ]
        then
                echo "$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)"
        else
                echo "Please set up net.ipv4.icmp_echo_ignore_broadcasts to 1"
        fi
}
ipv4_icmp_echo_ignore_broadcasts_check

