#!/bin/bash
  
tipc_conf_check(){
        if grep -q '^install tipc /bin/true' "/etc/modprobe.d/tipc.conf" && grep -q '^blacklist tipc' "/etc/modprobe.d/tipc.conf";
	then
		return 0
	else
		return 1
	fi
}

tipc_conf_check

