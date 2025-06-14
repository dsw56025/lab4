#!/bin/bash

if [ "$1" == "--date" ]; then
    date
elif [ "$1" == "--logs" ]; then
    for i in {1..100}; do
        logfile="log${i}.txt"
        echo "Plik: $logfile" > "$logfile"
        echo "Skrypt: $0" >> "$logfile"
        echo "Data: $(date)" >> "$logfile"
    done
fi