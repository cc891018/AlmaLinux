#!/bin/bash
  
is_wwan_radio_all_off(){
        if [ "$(nmcli radio wwan)" == "disabled" ]
        then
                echo "wwan is disabled"
        else
                echo "Please disable wwan"
        fi
}

is_wwan_radio_all_off
