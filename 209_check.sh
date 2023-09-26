check_passwd_Enforce(){
	if grep -q "enforce_for_root" "/etc/authselect/password-auth";
	then
		return 0
	else
		return 1
	fi
}

check_passwd_Enforce
