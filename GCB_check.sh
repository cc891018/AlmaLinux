#!/bin/bash

#generate an error log to record error text
if [ "$(find /root/check_scripts -name error.txt)" == "" ]
then 
	touch error.txt
else
	echo "$(tput setaf 3)Please fix the following errors to comply with GCB policy:$(tput setaf 7)" > error.txt
fi

#GCB_92
if [ "$(. /root/check_scripts/92_check.sh)" == "xinetd is not installed" ]
then
	echo "$(tput setaf 7)TWGCB-01-008-0092: $(tput setaf 2)OK $(tput setaf 7)"
else
	echo "$(tput setaf 7)TWGCB-01-008-0092: $(tput setaf 1)$(. /root/check_scripts/92_check.sh) $(tput setaf 7)"
	echo "$(tput setaf 7)TWGCB-01-008-0092: $(tput setaf 1)$(. /root/check_scripts/92_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_93
if [ "$(. /root/check_scripts/93_check.sh)" == "You have set up $(cat /etc/chrony.conf | grep "^server" | wc -l) NTP servers" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0093: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0093: $(tput setaf 1)$(. /root/check_scripts/93_check.sh) $(tput setaf 7)"
	echo "$(tput setaf 7)TWGCB-01-008-0093: $(tput setaf 1)$(. /root/check_scripts/93_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_94
if [ "$(. /root/check_scripts/94_check.sh)" == "rsyncd is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0094: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0094: $(tput setaf 1)$(. /root/check_scripts/94_check.sh) $(tput setaf 7)"
	echo "$(tput setaf 7)TWGCB-01-008-0094: $(tput setaf 1)$(. /root/check_scripts/94_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_95
if [ "$(. /root/check_scripts/95_check.sh)" == "avahi-daemon is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0095: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0095: $(tput setaf 1)$(. /root/check_scripts/95_check.sh) $(tput setaf 7)"
	echo "$(tput setaf 7)TWGCB-01-008-0095: $(tput setaf 1)$(. /root/check_scripts/95_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_96
if [ "$(. /root/check_scripts/96_check.sh)" == "snmpd is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0096: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0096: $(tput setaf 1)$(. /root/check_scripts/96_check.sh) $(tput setaf 7)"
	echo "$(tput setaf 7)TWGCB-01-008-0096: $(tput setaf 1)$(. /root/check_scripts/96_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_97
if [ "$(. /root/check_scripts/97_check.sh)" == "squid is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0097: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0097: $(tput setaf 1)$(. /root/check_scripts/97_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-0097: $(tput setaf 1)$(. /root/check_scripts/97_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_98
if [ "$(. /root/check_scripts/98_check.sh)" == "smb is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0098: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0098: $(tput setaf 1)$(. /root/check_scripts/98_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-0098: $(tput setaf 1)$(. /root/check_scripts/98_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_99
if [ "$(. /root/check_scripts/99_check.sh)" == "vsftpd is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-0099: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-0099: $(tput setaf 1)$(. /root/check_scripts/99_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-0099: $(tput setaf 1)$(. /root/check_scripts/99_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_100
if [ "$(. /root/check_scripts/100_check.sh)" == "ypserv is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00100: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00100: $(tput setaf 1)$(. /root/check_scripts/100_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00100: $(tput setaf 1)$(. /root/check_scripts/100_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_101
if [ "$(. /root/check_scripts/101_check.sh)" == "kdump is enabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00101: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00101: $(tput setaf 1)$(. /root/check_scripts/101_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00101: $(tput setaf 1)$(. /root/check_scripts/101_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_108-1
if [ "$(. /root/check_scripts/108-1_check.sh)" == "$(sysctl net.ipv4.ip_forward)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00108-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00108-1: $(tput setaf 1)$(. /root/check_scripts/108-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00108-1: $(tput setaf 1)$(. /root/check_scripts/108-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_108-2
if [ "$(. /root/check_scripts/108-2_check.sh)" == "$(sysctl net.ipv6.conf.all.forwarding)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00108-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00108-2: $(tput setaf 1)$(. /root/check_scripts/108-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00108-2: $(tput setaf 1)$(. /root/check_scripts/108-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_109
if [ "$(. /root/check_scripts/109_check.sh)" == "$(sysctl net.ipv4.conf.all.send_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00109: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00109: $(tput setaf 1)$(. /root/check_scripts/109_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00109: $(tput setaf 1)$(. /root/check_scripts/109_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_110
if [ "$(. /root/check_scripts/110_check.sh)" == "$(sysctl net.ipv4.conf.default.send_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00110: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00110: $(tput setaf 1)$(. /root/check_scripts/110_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00110: $(tput setaf 1)$(. /root/check_scripts/110_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_111-1
if [ "$(. /root/check_scripts/111-1_check.sh)" == "$(sysctl net.ipv4.conf.all.accept_source_route)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00111-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00111-1: $(tput setaf 1)$(. /root/check_scripts/111-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00111-1: $(tput setaf 1)$(. /root/check_scripts/111-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_111-2
if [ "$(. /root/check_scripts/111-2_check.sh)" == "$(sysctl net.ipv6.conf.all.accept_source_route)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 1)$(. /root/check_scripts/111-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 1)$(. /root/check_scripts/111-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_111-2
if [ "$(. /root/check_scripts/111-2_check.sh)" == "$(sysctl net.ipv6.conf.all.accept_source_route)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 1)$(. /root/check_scripts/111-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00111-2: $(tput setaf 1)$(. /root/check_scripts/111-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_112-1
if [ "$(. /root/check_scripts/112-1_check.sh)" == "$(sysctl net.ipv4.conf.default.accept_source_route)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00112-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00112-1: $(tput setaf 1)$(. /root/check_scripts/112-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00112-1: $(tput setaf 1)$(. /root/check_scripts/112-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_112-2
if [ "$(. /root/check_scripts/112-2_check.sh)" == "$(sysctl net.ipv6.conf.default.accept_source_route)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00112-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00112-2: $(tput setaf 1)$(. /root/check_scripts/112-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00112-2: $(tput setaf 1)$(. /root/check_scripts/112-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_113-1
if [ "$(. /root/check_scripts/113-1_check.sh)" == "$(sysctl net.ipv4.conf.all.accept_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00113-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00113-1: $(tput setaf 1)$(. /root/check_scripts/113-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00113-1: $(tput setaf 1)$(. /root/check_scripts/113-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_113-2
if [ "$(. /root/check_scripts/113-2_check.sh)" == "$(sysctl net.ipv6.conf.all.accept_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00113-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00113-2: $(tput setaf 1)$(. /root/check_scripts/113-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00113-2: $(tput setaf 1)$(. /root/check_scripts/113-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_114-1
if [ "$(. /root/check_scripts/114-1_check.sh)" == "$(sysctl net.ipv4.conf.default.accept_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00114-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00114-1: $(tput setaf 1)$(. /root/check_scripts/114-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00114-1: $(tput setaf 1)$(. /root/check_scripts/114-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_114-2
if [ "$(. /root/check_scripts/114-2_check.sh)" == "$(sysctl net.ipv6.conf.default.accept_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00114-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00114-2: $(tput setaf 1)$(. /root/check_scripts/114-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00114-2: $(tput setaf 1)$(. /root/check_scripts/114-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_115
if [ "$(. /root/check_scripts/115_check.sh)" == "$(sysctl net.ipv4.conf.all.secure_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00115: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00115: $(tput setaf 1)$(. /root/check_scripts/115_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00115: $(tput setaf 1)$(. /root/check_scripts/115_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_116
if [ "$(. /root/check_scripts/116_check.sh)" == "$(sysctl net.ipv4.conf.default.secure_redirects)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00116: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00116: $(tput setaf 1)$(. /root/check_scripts/116_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00116: $(tput setaf 1)$(. /root/check_scripts/116_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_117
if [ "$(. /root/check_scripts/117_check.sh)" == "$(sysctl net.ipv4.conf.all.log_martians)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00117: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00117: $(tput setaf 1)$(. /root/check_scripts/117_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00117: $(tput setaf 1)$(. /root/check_scripts/117_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_118
if [ "$(. /root/check_scripts/118_check.sh)" == "$(sysctl net.ipv4.conf.default.log_martians)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00118: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00118: $(tput setaf 1)$(. /root/check_scripts/118_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00118: $(tput setaf 1)$(. /root/check_scripts/118_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_119
if [ "$(. /root/check_scripts/119_check.sh)" == "$(sysctl net.ipv4.icmp_echo_ignore_broadcasts)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00119: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00119: $(tput setaf 1)$(. /root/check_scripts/119_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00119: $(tput setaf 1)$(. /root/check_scripts/119_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_120
if [ "$(. /root/check_scripts/120_check.sh)" == "$(sysctl net.ipv4.icmp_ignore_bogus_error_responses)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00120: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00120: $(tput setaf 1)$(. /root/check_scripts/120_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00120: $(tput setaf 1)$(. /root/check_scripts/120_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_121
if [ "$(. /root/check_scripts/121_check.sh)" == "$(sysctl net.ipv4.conf.all.rp_filter)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00121: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00121: $(tput setaf 1)$(. /root/check_scripts/121_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00121: $(tput setaf 1)$(. /root/check_scripts/121_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_122
if [ "$(. /root/check_scripts/122_check.sh)" == "$(sysctl net.ipv4.conf.default.rp_filter)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00122: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00122: $(tput setaf 1)$(. /root/check_scripts/122_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00122: $(tput setaf 1)$(. /root/check_scripts/122_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_123
if [ "$(. /root/check_scripts/123_check.sh)" == "$(sysctl net.ipv4.tcp_syncookies)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00123: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00123: $(tput setaf 1)$(. /root/check_scripts/123_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00123: $(tput setaf 1)$(. /root/check_scripts/123_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_124
if [ "$(. /root/check_scripts/124_check.sh)" == "$(sysctl net.ipv6.conf.all.accept_ra)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00124: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00124: $(tput setaf 1)$(. /root/check_scripts/124_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00124: $(tput setaf 1)$(. /root/check_scripts/124_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_125
if [ "$(. /root/check_scripts/125_check.sh)" == "$(sysctl net.ipv6.conf.default.accept_ra)" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00125: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00125: $(tput setaf 1)$(. /root/check_scripts/125_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00125: $(tput setaf 1)$(. /root/check_scripts/125_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_126
if [ "$(. /root/check_scripts/126_check.sh)" == "dccp is disabled now" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00126: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00126: $(tput setaf 1)$(. /root/check_scripts/126_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00126: $(tput setaf 1)$(. /root/check_scripts/126_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_127
if [ "$(. /root/check_scripts/127_check.sh)" == "sctp is disabled now" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00127: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00127: $(tput setaf 1)$(. /root/check_scripts/127_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00127: $(tput setaf 1)$(. /root/check_scripts/127_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_128
if [ "$(. /root/check_scripts/128_check.sh)" == "rds is disabled now" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00128: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00128: $(tput setaf 1)$(. /root/check_scripts/128_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00128: $(tput setaf 1)$(. /root/check_scripts/128_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_129
if [ "$(. /root/check_scripts/129_check.sh)" == "tipc is disabled now" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00129: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00129: $(tput setaf 1)$(. /root/check_scripts/129_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00129: $(tput setaf 1)$(. /root/check_scripts/129_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_130-1
if [ "$(. /root/check_scripts/130-1_check.sh)" == "wifi is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00130-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00130-1: $(tput setaf 1)$(. /root/check_scripts/130-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00130-1: $(tput setaf 1)$(. /root/check_scripts/130-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_130-2
if [ "$(. /root/check_scripts/130-2_check.sh)" == "wwan is disabled" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00130-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00130-2: $(tput setaf 1)$(. /root/check_scripts/130-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00130-2: $(tput setaf 1)$(. /root/check_scripts/130-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_131
if [ "$(. /root/check_scripts/131_check.sh)" == "Your network device is not in promiscuous mode" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00131: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00131: $(tput setaf 1)$(. /root/check_scripts/131_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00131: $(tput setaf 1)$(. /root/check_scripts/131_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_208-1
if [ "$(. /root/check_scripts/208-1_check.sh)" == "You have already set up \"retry\" to 3 in the \"system-auth\" file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00208-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00208-1: $(tput setaf 1)$(. /root/check_scripts/208-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00208-1: $(tput setaf 1)$(. /root/check_scripts/208-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_208-2
if [ "$(. /root/check_scripts/208-2_check.sh)" == "You have already set up \"retry\" to 3 in the \"password-auth\" file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00208-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00208-2: $(tput setaf 1)$(. /root/check_scripts/208-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00208-2: $(tput setaf 1)$(. /root/check_scripts/208-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_209-1
if [ "$(. /root/check_scripts/209-1_check.sh)" == "You have already set up \"enforce_for_root\" in the \"system-auth\" file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00209-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00209-1: $(tput setaf 1)$(. /root/check_scripts/209-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00209-1: $(tput setaf 1)$(. /root/check_scripts/209-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_209-2
if [ "$(. /root/check_scripts/209-2_check.sh)" == "You have already set up \"enforce_for_root\" in the \"password-auth\" file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00209-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00209-2: $(tput setaf 1)$(. /root/check_scripts/209-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00209-2: $(tput setaf 1)$(. /root/check_scripts/209-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_210
if [ "$(. /root/check_scripts/210_check.sh)" == "You have already set up \"minlen\" to 12" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00210: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00210: $(tput setaf 1)$(. /root/check_scripts/210_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00210: $(tput setaf 1)$(. /root/check_scripts/210_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_211
if [ "$(. /root/check_scripts/211_check.sh)" == "You have already set up \"minclass\" to 4" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00211: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00211: $(tput setaf 1)$(. /root/check_scripts/211_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00211: $(tput setaf 1)$(. /root/check_scripts/211_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_212
if [ "$(. /root/check_scripts/212_check.sh)" == "You have already set up \"dcredit\" to -1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00212: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00212: $(tput setaf 1)$(. /root/check_scripts/212_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00212: $(tput setaf 1)$(. /root/check_scripts/212_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_213
if [ "$(. /root/check_scripts/213_check.sh)" == "You have already set up \"ucredit\" to -1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00213: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00213: $(tput setaf 1)$(. /root/check_scripts/213_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00213: $(tput setaf 1)$(. /root/check_scripts/213_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_214
if [ "$(. /root/check_scripts/214_check.sh)" == "You have already set up \"lcredit\" to -1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00214: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00214: $(tput setaf 1)$(. /root/check_scripts/214_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00214: $(tput setaf 1)$(. /root/check_scripts/214_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_215
if [ "$(. /root/check_scripts/215_check.sh)" == "You have already set up \"ocredit\" to -1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00215: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00215: $(tput setaf 1)$(. /root/check_scripts/215_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00215: $(tput setaf 1)$(. /root/check_scripts/215_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_216
if [ "$(. /root/check_scripts/216_check.sh)" == "You have already set up \"difok\" to 3" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00216: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00216: $(tput setaf 1)$(. /root/check_scripts/216_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00216: $(tput setaf 1)$(. /root/check_scripts/216_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_217
if [ "$(. /root/check_scripts/217_check.sh)" == "You have already set up \"maxclassrepeat\" to 4" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00217: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00217: $(tput setaf 1)$(. /root/check_scripts/217_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00217: $(tput setaf 1)$(. /root/check_scripts/217_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_218
if [ "$(. /root/check_scripts/218_check.sh)" == "You have already set up \"maxrepeat\" to 3" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00218: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00218: $(tput setaf 1)$(. /root/check_scripts/218_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00218: $(tput setaf 1)$(. /root/check_scripts/218_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_219
if [ "$(. /root/check_scripts/219_check.sh)" == "You have already set up \"dictcheck\" to 1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00219: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00219: $(tput setaf 1)$(. /root/check_scripts/219_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00219: $(tput setaf 1)$(. /root/check_scripts/219_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_220
if [ "$(. /root/check_scripts/220_check.sh)" == "Failed login attempts is 5" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00220: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00220: $(tput setaf 1)$(. /root/check_scripts/220_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00220: $(tput setaf 1)$(. /root/check_scripts/220_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_221
if [ "$(. /root/check_scripts/221_check.sh)" == "Unlock time is 900" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00221: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00221: $(tput setaf 1)$(. /root/check_scripts/221_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00221: $(tput setaf 1)$(. /root/check_scripts/221_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_222
if [ "$(. /root/check_scripts/222_check.sh)" == "User most recent password remember is 3" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00222: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00222: $(tput setaf 1)$(. /root/check_scripts/222_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00222: $(tput setaf 1)$(. /root/check_scripts/222_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_223
if [ "$(. /root/check_scripts/223_check.sh)" == "Show failed logins" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00223: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00223: $(tput setaf 1)$(. /root/check_scripts/223_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00223: $(tput setaf 1)$(. /root/check_scripts/223_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_224
if [ "$(. /root/check_scripts/224_check.sh)" == "Encrypt method is SHA512" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00224: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00224: $(tput setaf 1)$(. /root/check_scripts/224_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00224: $(tput setaf 1)$(. /root/check_scripts/224_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_225
if [ "$(. /root/check_scripts/225_check.sh)" == "Password minimum days is 1" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00225: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00225: $(tput setaf 1)$(. /root/check_scripts/225_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00225: $(tput setaf 1)$(. /root/check_scripts/225_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_226
if [ "$(. /root/check_scripts/226_check.sh)" == "Password warn days is 14" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00226: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00226: $(tput setaf 1)$(. /root/check_scripts/226_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00226: $(tput setaf 1)$(. /root/check_scripts/226_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_227
if [ "$(. /root/check_scripts/227_check.sh)" == "Password maximum age is 90" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00227: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00227: $(tput setaf 1)$(. /root/check_scripts/227_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00227: $(tput setaf 1)$(. /root/check_scripts/227_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_228
if [ "$(. /root/check_scripts/228_check.sh)" == "Account inactive is 30" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00228: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00228: $(tput setaf 1)$(. /root/check_scripts/228_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00228: $(tput setaf 1)$(. /root/check_scripts/228_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_229
if [ "$(. /root/check_scripts/229_check.sh)" == "Login fail delay is 4" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00229: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00229: $(tput setaf 1)$(. /root/check_scripts/229_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00229: $(tput setaf 1)$(. /root/check_scripts/229_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_230
if [ "$(. /root/check_scripts/230_check.sh)" == "CREATE_HOME is yes" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00230: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00230: $(tput setaf 1)$(. /root/check_scripts/230_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00230: $(tput setaf 1)$(. /root/check_scripts/230_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_231
if [ "$(. /root/check_scripts/231_check.sh)" == "Neither NOPASSWD nor authenticate is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00231: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00231: $(tput setaf 1)$(. /root/check_scripts/231_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00231: $(tput setaf 1)$(. /root/check_scripts/231_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_232
if [ "$(. /root/check_scripts/232_check.sh)" == "maxlogins is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00232: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00232: $(tput setaf 1)$(. /root/check_scripts/232_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00232: $(tput setaf 1)$(. /root/check_scripts/232_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_233
if [ "$(. /root/check_scripts/233_check.sh)" == "kbd is installed" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00233: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00233: $(tput setaf 1)$(. /root/check_scripts/233_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00233: $(tput setaf 1)$(. /root/check_scripts/233_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_234
if [ "$(. /root/check_scripts/234_check.sh)" == "screensaver is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00234: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00234: $(tput setaf 1)$(. /root/check_scripts/234_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00234: $(tput setaf 1)$(. /root/check_scripts/234_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_235
if [ "$(. /root/check_scripts/235_check.sh)" == "idle-delay is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00235: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00235: $(tput setaf 1)$(. /root/check_scripts/235_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00235: $(tput setaf 1)$(. /root/check_scripts/235_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_236
if [ "$(. /root/check_scripts/236_check.sh)" == "AutomaticLogin is closed" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00236: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00236: $(tput setaf 1)$(. /root/check_scripts/236_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00236: $(tput setaf 1)$(. /root/check_scripts/236_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_237
if [ "$(. /root/check_scripts/237_check.sh)" == "System account is locked" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00237: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00237: $(tput setaf 1)$(. /root/check_scripts/237_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00237: $(tput setaf 1)$(. /root/check_scripts/237_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_238-1
if [ "$(. /root/check_scripts/238-1_check.sh)" == "Time out is set in the /etc/bashrc file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00238-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00238-1: $(tput setaf 1)$(. /root/check_scripts/238-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00238-1: $(tput setaf 1)$(. /root/check_scripts/238-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_238-2
if [ "$(. /root/check_scripts/238-2_check.sh)" == "Time out is set in the /etc/profile file" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00238-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00238-2: $(tput setaf 1)$(. /root/check_scripts/238-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00238-2: $(tput setaf 1)$(. /root/check_scripts/238-2_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_239
if [ "$(. /root/check_scripts/239_check.sh)" == "GUI Setting is locked" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00239: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00239: $(tput setaf 1)$(. /root/check_scripts/239_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00239: $(tput setaf 1)$(. /root/check_scripts/239_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_240
if [ "$(. /root/check_scripts/240_check.sh)" == "root GID is 0" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00240: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00240: $(tput setaf 1)$(. /root/check_scripts/240_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00240: $(tput setaf 1)$(. /root/check_scripts/240_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_241
if [ "$(. /root/check_scripts/241_check.sh)" == "umask is 027" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00241: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00241: $(tput setaf 1)$(. /root/check_scripts/241_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00241: $(tput setaf 1)$(. /root/check_scripts/241_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_242
if [ "$(. /root/check_scripts/242_check.sh)" == "UMASK is 027" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00242: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00242: $(tput setaf 1)$(. /root/check_scripts/242_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00242: $(tput setaf 1)$(. /root/check_scripts/242_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_243-1
if [ "$(. /root/check_scripts/243-1_check.sh)" == "pam_wheel.so is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00243-1: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00243-1: $(tput setaf 1)$(. /root/check_scripts/243-1_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00243-1: $(tput setaf 1)$(. /root/check_scripts/243-1_check.sh) $(tput setaf 7)" >> error.txt
fi

#GCB_243-2
if [ "$(. /root/check_scripts/243-2_check.sh)" == "Wheel group is set" ]
then
        echo "$(tput setaf 7)TWGCB-01-008-00243-2: $(tput setaf 2)OK $(tput setaf 7)"
else
        echo "$(tput setaf 7)TWGCB-01-008-00243-2: $(tput setaf 1)$(. /root/check_scripts/243-2_check.sh) $(tput setaf 7)"
        echo "$(tput setaf 7)TWGCB-01-008-00243-2: $(tput setaf 1)$(. /root/check_scripts/243-2_check.sh) $(tput setaf 7)" >> error.txt
fi

cat error.txt
