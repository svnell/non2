#!/bin/env bash
source ip_searcher.sh

conclusion="$(/bin/diff -B ips.txt ip_key.txt)"
if [ "$conclusion" == "Files ips.txt and ip_key.txt are identical" ]
then
    echo SUCCESS
else 
    echo FAIL
fi
/bin/rm ips.txt