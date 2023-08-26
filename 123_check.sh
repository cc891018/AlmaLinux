#!/bin/bash
  
ipv4_tcp_syncookies_check(){
        if [ "$(sysctl net.ipv4.tcp_syncookies)" == "net.ipv4.tcp_syncookies = 1" ]
        then
                echo "$(sysctl net.ipv4.tcp_syncookies)"
        else
                echo "Please set up net.ipv4.tcp_syncookies to 1"
        fi
}
ipv4_tcp_syncookies_check

