#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
	
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
	amount=${2:-100}
    for ((i=1; i<=amount; i++)); do
        logfile="log${i}.txt"
        echo "Plik: $logfile" > "$logfile"
        echo "Skrypt: $0" >> "$logfile"
        echo "Data: $(date)" >> "$logfile"
    done
	
elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
	amount=${2:-100}
    for ((i=1; i<=amount; i++)); do
        errordir="error${i}"
		mkdir -p "$errordir"
		errorfile="$errordir/error${i}.txt"
        echo "Plik: error${i}.txt" > "$errorfile"
        echo "Skrypt: $0" >> "$errorfile"
        echo "Data: $(date)" >> "$errorfile"
    done
	
elif [[ "$1" == "--init" ]]; then

	git clone "https://github.com/dsw56025/lab4.git"
    export PATH="$PATH:$(pwd)"
	
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Polecenia:"
    echo "  --date, -d                     Wyświetla dzisiejszą datę"
    echo "  --logs [liczba], -l [liczba]   Tworzy pliki log.txt (domyslnie 100) "
	echo "  --error [liczba], -e [liczba]  Tworzy pliki errorx/errorx.txt (domyslnie 100) "
	echo "  --init, -i                     Klonuje repozytorium do katalogu robocze i dodaje sciezke do PATH "
    echo "  --help, -h                     Wyświetla pomoc"
fi