check_passwd_retry(){
	if grep -q "retry=3" "/etc/authselect/password-auth";
	then
		return 0
	else
		return 1
	fi
}

check_passwd_retry
