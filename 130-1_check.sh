#!/bin/bash
  
is_wifi_radio_all_off(){
        if [ "$(nmcli radio wifi)" == "disabled" ]
        then
                echo "wifi is disabled"
        else
                echo "Please disable wifi"
        fi
}

is_wifi_radio_all_off
