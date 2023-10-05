#!/bin/bash

>file3.csv

while read line; do
    col=$(cut -d, -f 1 <<<"$line")
    COUNT=$(grep -c "^$col" file2.csv)
    if [ $COUNT -eq 0 ]; then
        echo $line >> difference.csv
    fi
done < file1.csv