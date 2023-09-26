#!/bin/bash

dccp_conf_check(){
	if grep -q '^install dccp /bin/true' "/etc/modprobe.d/dccp.conf" && grep -q '^blacklist dccp' "/etc/modprobe.d/dccp.conf";
	then
		return 0
	else
		return 1
	fi
}

dccp_conf_check
