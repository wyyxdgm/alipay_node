#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR/..
PID_FILE=pid/server-node/server.pid
DATE=`date +%Y%m%d`
if [[ -f watched/db && `cat watched/db` = 'opened' && -f $PID_FILE ]]; then
	echo "try stop db now ..."
	echo 'close' > watched/db
	echo 'count down 2s to check db closed ...'
	echo "2"
	sleep 1s
	echo "1"
	sleep 1s
	echo "0"
	if [ `cat watched/db` = 'closed' ] ; then
		echo 'db closed success!'
	fi
else
	echo 'db has down!!'
fi

#关闭项目

if [ -f $PID_FILE ] ; then
	pid=`cat $PID_FILE`
	if [ ! -z $pid ] ; then
		ppid=`./bin/lib/get-parent-pid.sh $pid`
		if [ ! -z $ppid ] ; then
			pid=$ppid
		fi
		bash ./bin/lib/killtree.sh $pid 9
		rm -f $PID_FILE
		echo 'stop-server success!'
	fi
else
	echo 'server has down!!'
fi

# dir=$(ls -l ./pid |awk '/^d/ {print $NF}')
# for i in $dir
# do
#     cat ./pid/$i | xargs kill -9 && rm -f ./pid/$i
# done

exit 0;