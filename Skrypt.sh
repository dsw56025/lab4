#!/bin/bash

if [ "$1" == "--date" || "$1" == "-d" ]; then
    date
elif [ "$1" == "--logs" || "$1" == "-l" ]; then
	amount=${2:-100}
    for ((i=1; i<=amount; i++)); do
        logfile="log${i}.txt"
        echo "Plik: $logfile" > "$logfile"
        echo "Skrypt: $0" >> "$logfile"
        echo "Data: $(date)" >> "$logfile"
    done
elif [ "$1" == "--help" || "$1" == "-h" ]; then
    echo "Polecenia:"
    echo "  --date, -d           			Wyświetla dzisiejszą datę"
    echo "  --logs [liczba], -l [liczba]    Tworzy pliki log.txt (domyslnie 100) "
    echo "  --help, -h                      Wyświetla pomoc"
fi