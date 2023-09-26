#!/bin/bash

#generate an error log to record error text
if [ "$(find /root/check_scripts -name error.txt)" == "" ]
then 
	touch error.txt
else
	echo "Please fix the following errors to comply with GCB policy:" > error.txt
fi

#GCB_92
$(source ./92_check.sh)

if [ $? == "1" ]
then
	echo "TWGCB-01-008-0092: xinetd is installed.Please remove it." >> error.txt
fi

#GCB_93
$(source ./93_check.sh)

if [ $? == "1" ]
then
	echo "TWGCB-01-008-0093: Please open the chrony.conf file and add at least 2 NTP server." >> error.txt
fi

#GCB_94
$(source ./94_check.sh)

if [ $? == "1" ]
then
	echo "TWGCB-01-008-0094: rsyncd is enabled. Please disable it."
fi

#GCB_95
$(source ./95_check.sh)

if [ $? == "1" ]
then
	echo "TWGCB-01-008-0095: avahi is enabled. Please disable it." >> error.txt
fi

#GCB_96
$(source ./96_check.sh)

if [ $? == "1" ]
then
	echo "TWGCB-01-008-0096: snmp is enabled. Please disable it." >> error.txt
fi

#GCB_97
$(source ./97_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-0097: squid is enabled. Please disable it." >> error.txt
fi

#GCB_98
$(source ./98_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-0098: smb is enabled. Please disable it" >> error.txt
fi

#GCB_99
$(source ./99_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-0099: vsftpd is enabled. Please disable it" >> error.txt
fi

#GCB_100
$(source ./100_check.sh)
if [ $? == "1" ]
then
        echo "TWGCB-01-008-00100: ypserv is enabled. Please disable it" >> error.txt
fi

#GCB_101
$(source ./101_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00101: kdump is not installed. Please install kexec-tools" >> error.txt
fi

#GCB_108-1
$(source ./108-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00108-1: Please set up net.ipv4.ip_forward to 0" >> error.txt
fi

#GCB_108-2
$(source ./108-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00108-2: Please set up net.ipv6.conf.all.forwarding to 0" >> error.txt
fi

#GCB_109
$(source ./109_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00109: Please set up net.ipv4.conf.all.send_redirects to 0" >> error.txt
fi

#GCB_110
$(source ./110_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00110: Please set up net.ipv4.conf.default.send_redirects to 0" >> error.txt
fi

#GCB_111-1
$(source ./111-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00111-1: Please set up net.ipv4.conf.all.accept_source_route to 0" >> error.txt
fi

#GCB_111-2
$(source ./111-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00111-2: Please set up net.ipv6.conf.all.accept_source_route to 0" >> error.txt
fi


#GCB_112-1
$(source ./112-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00112-1: Please set up net.ipv4.conf.default.accept_source_route to 0" >> error.txt
fi

#GCB_112-2
$(source ./112-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00112-2: Please set up net.ipv6.conf.default.accept_source_route to 0" >> error.txt
fi

#GCB_113-1
$(source ./113-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00113-1: Please set up net.ipv4.conf.all.accept_redirects to 0" >> error.txt
fi

#GCB_113-2
$(source ./113-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00113-2: Please set up net.ipv6.conf.all.accept_redirects to 0" >> error.txt
fi

#GCB_114-1
$(source ./114-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00114-1: Please set up net.ipv4.conf.default.accept_redirects to 0" >> error.txt
fi

#GCB_114-2
$(source ./114-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00114-2: Please set up net.ipv6.conf.default.accept_redirects to 0" >> error.txt
fi

#GCB_115
$(source ./115_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00115: Please set up net.ipv4.conf.all.secure_redirects to 0" >> error.txt
fi

#GCB_116
$(source ./116_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00116: Please set up net.ipv4.conf.default.secure_redirects to 0" >> error.txt
fi

#GCB_117
$(source ./117_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00117: Please set up net.ipv4.conf.all.log_martians to 1" >> error.txt
fi

#GCB_118
$(source ./118_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00118: Please set up net.ipv4.conf.default.log_martians to 1" >> error.txt
fi

#GCB_119
$(source ./119_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00119: Please set up net.ipv4.icmp_echo_ignore_broadcasts to 1" >> error.txt
fi

#GCB_120
$(source ./120_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00120: Please set up net.ipv4.icmp_ignore_bogus_error_responses to 1" >> error.txt
fi

#GCB_121
$(source ./121_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00121: Please set up net.ipv4.conf.all.rp_filter to 1" >> error.txt
fi

#GCB_122
$(source ./122_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00122: Please set up net.ipv4.conf.default.rp_filter to 1" >> error.txt
fi

#GCB_123
$(source ./123_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00123: Please set up net.ipv4.tcp_syncookies to 1" >> error.txt
fi

#GCB_124
$(source ./124_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00124: Please set up net.ipv6.conf.all.accept_ra to 0" >> error.txt
fi

#GCB_125
$(source ./125_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00125: Please set up net.ipv6.conf.default.accept_ra to 0" >> error.txt
fi

#GCB_126
$(source ./126_check.sh > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00126: Please disable dccp" >> error.txt
fi

#GCB_127
$(source ./127_check.sh > /dev/null 2>&1)

if [ $?  == "1" ]
then
        echo "TWGCB-01-008-00127:Please disable sctp" >> error.txt
fi

#GCB_128
$(source ./128_check.sh  > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00128: Please disable rds" >> error.txt
fi

#GCB_129
$(source ./129_check.sh  > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00129: Please disable tipc" >> error.txt
fi

#GCB_130-1
$(source ./130-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00130-1: Please disable wifi" >> error.txt
fi

#GCB_130-2
$(source ./130-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00130-2: Please disable wwan" >> error.txt
fi

#GCB_131
$(source ./131_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00131: Your network device is in promiscuous mode" >> error.txt
fi

#GCB_208
$(source ./208_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00208: Password retry not 3." >> error.txt
fi

#GCB_209
$(source ./209_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00209-: Enforce for root is disabled." >> error.txt
fi

#GCB_210
$(source ./210_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00210: Please set up \"minlen\" to 12" >> error.txt
fi

#GCB_211
$(source ./211_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00211: Please set up \"minclass\" to 4" >> error.txt
fi

#GCB_212
$(source ./212_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00212: Please set up \"dcredit\" to -1" >> error.txt
fi

#GCB_213
$(source ./213_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00213: Please set up \"ucredit\" to -1" >> error.txt
fi

#GCB_214
$(source ./214_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00214: Please set up \"lcredit\" to -1" >> error.txt
fi

#GCB_215
$(source ./215_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00215: Please set up \"ocredit\" to -1" >> error.txt
fi

#GCB_216
$(source ./216_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00216: Please set up \"difok\" to 3" >> error.txt
fi

#GCB_217
$(source ./217_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00217: Please set up \"maxclassrepeat\" to 4" >> error.txt
fi

#GCB_218
$(source ./218_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00218: Please set up \"maxrepeat\" to 3" >> error.txt
fi

#GCB_219
$(source ./219_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00219: Please set up \"dictcheck\" to 1" >> error.txt
fi

#GCB_220
$(source ./220_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00220: Failed login attempts is not 5" >> error.txt
fi

#GCB_221
$(source ./221_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00221: Unlock time is not 900" >> error.txt
fi

#GCB_222
$(source ./222_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00222: User most recent password remember is not 3" >> error.txt
fi

#GCB_223
$(source ./223_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00223: Hidden failed logins" >> error.txt
fi

#GCB_224
$(source ./224_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00224: Encrypt method is not SHA512" >> error.txt
fi

#GCB_225
$(source ./225_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00225: Password minimum days is not 1" >> error.txt
fi

#GCB_226
$(source ./226_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00226: Password warn days is not 14" >> error.txt
fi

#GCB_227
$(source ./227_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00227: Password maximum age is not 90" >> error.txt
fi

#GCB_228
$(source ./228_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00228: Account inactive not 30." >> error.txt
fi

#GCB_229
$(source ./229_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00229: Login fail delay is not 4" >> error.txt
fi

#GCB_230
$(source ./230_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00230: CREATE_HOME is not yes" >> error.txt
fi

#GCB_231
$(source ./231_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00231: Please delete NOPASSWD or authenticate" >> error.txt
fi

#GCB_232
$(source ./232_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00232: maxlogins is not set" >> error.txt
fi

#GCB_233
$(source ./233_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00233: kdb not installed." >> error.txt
fi

#GCB_234
$(source ./234_check.sh > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00234: screensaver is not set" >> error.txt
fi

#GCB_235
$(source ./235_check.sh > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00235: screensaver is not set" >> error.txt
fi

#GCB_236
$(source ./236_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00236: AutomaticLogin is not closed" >> error.txt
fi

#GCB_237
$(source ./237_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00237: System account is not locked" >> error.txt
fi

#GCB_238-1
$(source ./238-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00238-1: Time out is not set in the /etc/bashrc file" >> error.txt
fi

#GCB_238-2
$(source ./238-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00238-2: Time out is not set in the /etc/profile file" >> error.txt
fi

#GCB_239
$(source ./239_check.sh > /dev/null 2>&1)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00239: GUI Setting not locked." >> error.txt
fi

#GCB_240
$(source ./240_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00240: root GID is not 0" >> error.txt
fi

#GCB_241
$(source ./241_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00241: umask is not 027" >> error.txt
fi

#GCB_242
$(source ./242_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00242: UMASK is not 027" >> error.txt
fi

#GCB_243-1
$(source ./243-1_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00243-1: pam_wheel.so is not set" >> error.txt
fi

#GCB_243-2
$(source ./243-2_check.sh)

if [ $? == "1" ]
then
        echo "TWGCB-01-008-00243-2: Wheel group is not set" >> error.txt
fi

cat error.txt
