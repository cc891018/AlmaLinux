#!/bin/bash

dccp_conf_check(){
	if [ "$(lsmod | grep dccp)" == "" ]
	then
		echo "dccp is disabled now"
	else
		echo "Pleasse disable dccp module"
	fi
}

dccp_conf_check
