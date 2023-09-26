#!/bin/bash
  
is_wwan_radio_all_off(){
        if [ "$(nmcli radio wwan)" == "disabled" ]
        then
                return 0
        else
                return 1
        fi
}

is_wwan_radio_all_off
