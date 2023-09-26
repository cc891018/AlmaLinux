#!/bin/bash
  
sctp_conf_check(){
	if grep -q '^install sctp /bin/true' "/etc/modprobe.d/sctp.conf" && grep -q '^blacklist sctp' "/etc/modprobe.d/sctp.conf";
	then
		return 0
	else
		return 1
	fi
}

sctp_conf_check

