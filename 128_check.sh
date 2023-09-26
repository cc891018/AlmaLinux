#!/bin/bash
  
rds_conf_check(){
        if grep -q '^install rds /bin/true' "/etc/modprobe.d/rds.conf" && grep -q '^blacklist rds' "/etc/modprobe.d/rds.conf";
	then
		return 0
	else
		return 1
	fi
}

rds_conf_check

