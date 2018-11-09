#!/usr/bin/env bash

. $(dirname "${BASH_ARGV[0]}")/env.sh

ready=$(echo $PATH | grep $DTM_CMDS)

if [ -z "$ready" ]
then
	export PATH=$DTM_CMDS:$DTM:$PATH
else
	echo "Path is already setted"
fi
