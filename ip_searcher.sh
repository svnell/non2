#!/usr/bin/env bash

REDCOL="\e[91m"
ENDCOL="\e[0m"

#([1][0-9]{2})|([2][0-4][0-9])|([2][5][0-5])|([1-9][0-9])|[0-9]){1}
UMSG="Usage: ./validation.sh <source_filename>"
ARG=$1
PATH=`realpath $1 2>/dev/null` 
REGEXP='(([1][0-9]{2})\.|([2][0-4][0-9])\.|([2][5][0-5])\.|([1-9][0-9])\.|[0-9]\.){3}[0-9]{1,3}'

if ! ([ "$#" -eq 1 ] && [ -f "$PATH" ]); then
    echo -e "${REDCOL}Error: wrong arguments!${ENDCOL}\n$UMSG"
    exit 1
fi

/bin/grep -Eo $REGEXP $PATH > nips.txt
