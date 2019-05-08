#!/usr/bin/env bash

msg=$1
cmd=$2

if [[ -z "$msg" ]] || [[ -z "$cmd" ]]; then
    printf "Invalid input - exiting.\n"
    return -1;
fi

response=$(echo -e "no\nyes" | rofi -dmenu -p "${msg}");

if [ ${response} == "yes" ]; then
    sh -c "${cmd}"
fi

    
