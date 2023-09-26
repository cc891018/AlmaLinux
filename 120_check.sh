#!/bin/bash
  
ipv4_icmp_ignore_bogus_error_responses_check(){
        if [ "$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)" == "net.ipv4.icmp_ignore_bogus_error_responses = 1" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_icmp_ignore_bogus_error_responses_check
