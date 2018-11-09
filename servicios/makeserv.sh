#!/usr/bin/env bash

if [ -z "$1" ]
then
	echo "Uso: $0 numeroDeServer"
	exit 1
fi

serv="simple${1}"
exe=$(dirname $(pwd))/servers/simple
run=watch/$serv/run
mkdir -pv watch/$serv
cat sample-run | sed "s|EXE|${exe} ${1}|g" > $run
chmod +x $run

