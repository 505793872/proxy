#!/bin/bash
set -e

if [ "$1" = 'v2ray' ];then
	chown -R v2ray ${V2RAY_CONFIG_PATH}
	echo $1
	echo $@
	if [ -z "$(ls -A ${V2RAY_CONFIG_PATH})" ]; then
		gosu v2ray /usr/bin/v2ray -c /etc/v2ray/config.json
	fi

	exec gosu v2ray "$@"
fi

exec "$@"
