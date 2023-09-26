#!/bin/bash

wheel_group_check(){
	if grep -qE "^wheel:x:10:root," "/etc/group"
	then
		return 0
	else
		return 1
	fi
}

wheel_group_check
