#!/bin/bash
  
ENCRYPT_METHOD_check(){
        if grep -q "^ENCRYPT_METHOD SHA512" "/etc/login.defs"
        then
		return 0
        else
		return 1
        fi
}

ENCRYPT_METHOD_check

