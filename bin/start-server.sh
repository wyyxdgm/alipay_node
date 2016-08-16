#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR/..

DATE=`date +%Y%m%d`
echo '==>> ' $DIR
echo '=========================================='
PID_FILE=pid/server-node/server.pid
#stop
bash ./bin/stop-server.sh

if [ -f $PID_FILE ]; then
	echo 'stop-server failed!!'
else
	#启动项目
	if [ ! -d log/ ]; then
		mkdir log/
	fi

	if [ ! -d pid/shadowsocks-python ]; then
		mkdir -p pid/shadowsocks-python
	fi

	if [ ! -d pid/server-node ]; then
		mkdir -p pid/server-node
	fi

	if [ ! -d watched/ ]; then
		mkdir watched/
	fi

	#install crontab
	crontab bin/cron/crontab.txt
	echo "cron installed success!"
	service cron start
	echo "cron started success!"
	#start
	echo "start-server at: `date +%F%k:%M:%S`"
	supervisor server.js >/dev/null 2>&1 &
fi
exit  0;