#!/bin/bash

is_radio_all_off(){
	if [ "$(nmcli radio wifi)" == "disabled" ]
	then
		echo "wifi is disabled"
	else
		echo "Please disable wifi"
	fi

	if [ "$(nmcli radio wwan)" == "disabled" ]
        then
                echo "wwan is disabled"
        else
                echo "Please disable wwan"
        fi
}

is_radio_all_off
