#!/bin/bash
  
ipv4_icmp_ignore_bogus_error_responses_check(){
        if [ "$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)" == "net.ipv4.icmp_ignore_bogus_error_responses = 1" ]
        then
                echo "$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)"
        else
                echo "Please set up net.ipv4.icmp_ignore_bogus_error_responses to 1"
        fi
}
ipv4_icmp_ignore_bogus_error_responses_check
