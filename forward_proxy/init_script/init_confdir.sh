#!/bin/bash
set -xe
# set up v2ray config folder
mkdir -p /etc/v2ray/confdir

# set up config file
for BASE in 00_log 01_api 02_dns 03_routing 04_policy 05_inbounds 06_outbounds 07_transport 08_stats 09_reverse;
	do echo '{}' > "/etc/v2ray/confdir/$BASE.json";
done
