#!/bin/bash

songs=($(ls ./songs/*.mp3))
n=${#songs[@]}
i=$((RANDOM % n))

echo "Found $n songs, playing $i on the list" 
echo "Playing ${songs[$i]}"

xdg-open ${songs[$i]} &> /dev/null   


