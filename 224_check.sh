#!/bin/bash
  
ENCRYPT_METHOD_check(){
        if grep -q "^ENCRYPT_METHOD SHA512" "/etc/login.defs"
        then
		echo "Encrypt method is SHA512"
        else
		echo "Encrypt method is not SHA512"
        fi
}

ENCRYPT_METHOD_check

