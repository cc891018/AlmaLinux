#!/bin/bash

is_promiscuous_mode(){
	if [ "$(ip link | grep -i promisc)" == "" ]
	then
		return 0
	else
		return 1
	fi
}

is_promiscuous_mode
