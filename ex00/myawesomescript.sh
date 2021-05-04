#!/bin/bash

if [ ${#} -eq 1 ]
then
url="${1}"
curl ${url} 2>&1 |  grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sort -u
else
exit 1 # wrong args
fi
