#!/bin/bash

words=$(cat /usr/share/dict/usa | sort -R |head -n5)

clear
echo "$words"
#how do we do we read multiple words from the line 
#we need to split it by whitelint

while read lines
do 
    for line in $lines;do

        for word in $words; do
            #echo "$word"
            if [ $word = $line ]
            then
                buffer=()
                for a in $words; do
                    if [ $word != $a ]; then
                        buffer+=($a)
                    fi
                done
                words=${buffer[@]}
                
                if [ ${#buffer[@]} -eq 0 ];then
                    exit 0
                fi
                clear;
                for i in "${words[@]}"; do printf "%s \n" $i;done
     
            fi
        done
    done

done <  "${1:-/dev/stdin}"

