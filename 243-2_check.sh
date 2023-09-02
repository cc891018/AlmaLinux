#!/bin/bash

wheel_group_check(){
	if grep -qE "^wheel:x:10:root," "/etc/group"
	then
		echo "Wheel group is set"
	else
		echo "Wheel group is not set"
	fi
}

wheel_group_check
