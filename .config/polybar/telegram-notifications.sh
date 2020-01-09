#!/bin/bash

# Aaron Korte
# 2020-01-08

# Find the Telegram messenger window, extract the number of notifications and return it.

pids=$(xdotool search --name "Telegram \([0-9]+\)" 2> /dev/null)
for pid in $pids; do
    name=$(xdotool getwindowname $pid 2> /dev/null)
    num=$(echo $name | perl -0777 -pe "s/(?:\[)?Telegram(?: \(([0-9]+)\))?(?:\])?/\1/")
    if [[ $num != 0 ]]; then
        echo $num
        exit 0
    fi
done
echo 0
exit 0
