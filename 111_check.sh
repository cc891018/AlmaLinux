#!/bin/bash

accept_source_route_check(){
	if [ "$(sysctl net.ipv4.conf.all.accept_source_route)" == "net.ipv4.conf.all.accept_source_route = 0" ]
	then
		echo "$(sysctl net.ipv4.conf.all.accept_source_route)"
	else
		echo "Please set up net.ipv4.conf.all.accept_source_route to 0"
	fi

	if [ "$(sysctl net.ipv6.conf.all.accept_source_route)" == "net.ipv6.conf.all.accept_source_route = 0" ]
	then
		echo "$(sysctl net.ipv6.conf.all.accept_source_route)"
	else
		echo "Please set up net.ipv6.conf.all.accept_source_route to 0"
	fi
}
accept_source_route_check
