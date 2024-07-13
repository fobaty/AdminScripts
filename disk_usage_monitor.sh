#!/bin/bash

THRESHOLD=80
EMAIL="your.email@example.com"

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
    usep=$(echo $output | awk '{ print $1 }' | cut -d'%' -f1)
    partition=$(echo $output | awk '{ print $2 }')
    if [ $usep -ge $THRESHOLD ]; then
        echo "The server $(hostname), partition $partition is at $usep% capacity" | mail -s "Disk Space Warning: $usep% used" $EMAIL
    fi
done
