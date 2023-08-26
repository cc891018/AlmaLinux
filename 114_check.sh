#!/bin/bash
  
default_accept_redirects_check(){
        if [ "$(sysctl net.ipv4.conf.default.accept_redirects)" == "net.ipv4.conf.default.accept_redirects = 0" ]
        then
                echo "$(sysctl net.ipv4.conf.default.accept_redirects)"
        else
                echo "Please set up net.ipv4.conf.default.accept_redirects to 0"
        fi

        if [ "$(sysctl net.ipv6.conf.default.accept_redirects)" == "net.ipv6.conf.default.accept_redirects = 0" ]
        then
                echo "$(sysctl net.ipv6.conf.default.accept_redirects)"
        else
                echo "Please set up net.ipv6.conf.default.accept_redirects to 0"
        fi
}
default_accept_redirects_check

