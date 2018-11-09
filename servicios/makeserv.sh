#!/usr/bin/env bash

if [ -z "$1" ]
then
	echo "Uso: $0 numeroDeServer"
	exit 1
fi

. $(dirname "${BASH_ARGV[0]}")/env.sh

# echo "DTM($DTM)"
# echo "DTM_REAL($DTM_REAL)"

serv="simple${1}"
exe=${DTM}/servers/simple
run=${DTM_REAL}/$serv/run

# exit 0

mkdir -pv ${DTM_WATCH}
mkdir -pv ${DTM_REAL}/$serv
cat run.template| sed "s|EXE|${exe} ${1}|g" > $run
chmod +x $run

