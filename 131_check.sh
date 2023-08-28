#!/bin/bash

is_promiscuous_mode(){
	if [ "$(ip link | grep -i promisc)" == "" ]
	then
		echo "Your network device is not in promiscuous mode."
	else
		echo "Your network device is in promiscuous mode."
	fi
}

is_promiscuous_mode
