#!/usr/bin/env bash

if [ -z "$1" ]
then
	echo "Uso: $0 numeroDeServerALinkear"
	exit 1
fi

. $(dirname "${BASH_ARGV[0]}")/env.sh

# echo "DTM($DTM)"
# echo "DTM_REAL($DTM_REAL)"

ln -svf ${DTM_REAL}/simple${1} ${DTM_WATCH}/simple${1}

