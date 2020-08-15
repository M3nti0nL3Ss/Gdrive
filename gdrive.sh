#!/bin/bash
if [ $# -eq 0 ];then
echo "Usage: <ID> <Output name>"
exit 0
fi
ID=$1 #id of file (it must be public, sharable)
OUTPUT=$2
wget -c --load-cookies /tmp/cookies_$ID.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies_$ID.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=${ID}" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${ID}" -O $OUTPUT && rm -rf /tmp/cookies_$ID.txt
