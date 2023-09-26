#!/bin/bash
  
is_wifi_radio_all_off(){
        if [ "$(nmcli radio wifi)" == "disabled" ]
        then
                return 0
        else
                return 1
        fi
}

is_wifi_radio_all_off
