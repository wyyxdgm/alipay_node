#!/bin/bash
#init after git clone
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR/../..
echo '==>> ' $DIR
echo '=========================================='

if [ ! -d node_modules ]; then
	echo 'cnpm install start...'
	cnpm install
	echo 'cnpm install done!'
else
	echo 'node_modules        check success!'
fi

# if [ ! -d bower_components ]; then
# 	echo 'bower install start...'
# 	bower install
# 	echo 'bower install done!'
# else
# 	echo 'bower_components    check success!'
# fi

# if [ ! -d static/build ]; then
# 	echo 'gulp default start...'
# 	gulp
# 	echo 'gulp done!'
# else
# 	echo 'static/build        check success!'
# fi