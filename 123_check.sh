#!/bin/bash
  
ipv4_tcp_syncookies_check(){
        if [ "$(sysctl net.ipv4.tcp_syncookies)" == "net.ipv4.tcp_syncookies = 1" ]
        then
                return 0
        else
                return 1
        fi
}
ipv4_tcp_syncookies_check

