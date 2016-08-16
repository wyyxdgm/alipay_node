#!/bin/bash
function killtree() {
    local _pid=$1
    local _sig=${2:-TERM}
    kill -stop ${_pid}
    for _child in $(ps -o pid --no-headers --ppid ${_pid})
    do
       killtree ${_child} ${_sig}
       echo "killtree ${_child} ${_sig}"
    done
    kill -${_sig} ${_pid}
    echo "kill -${_sig} ${_pid}"
}

if [ ${#} -eq 0 -o ${#} -gt 2 ]
then
    echo "Usage: $(basename ${0}) <pid> [signal]"
    exit 1
fi

killtree ${@}