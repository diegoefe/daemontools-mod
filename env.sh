export DTM=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export DTM_CMDS=${DTM}/command
export DTM_SERV=${DTM}/local
export DTM_WATCH=${DTM_SERV}/watch
export DTM_REAL=${DTM_SERV}/real

ko=$(which killall 2>&1 | grep 'no killall')
if [ -z "$ko" ]
then
	export KILLALL=killall
else
	export KILLALL=pkill
fi
# echo "Killing with '$KILLALL'"
