#!/bin/bash
if [ "1$" == "--date" ]; then
	date
elif [ "1$" == "--logs" ]; then
	count=${2:-100}
	for i in $(seq 1 $count); do
		echo "Plik: log${i}.txt | Skrypt: $0 | Data: $(date)" > log${i}.txt
	done
fi

