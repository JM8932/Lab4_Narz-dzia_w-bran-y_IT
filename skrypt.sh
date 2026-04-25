#!/bin/bash
if [ "1$" == "--date" ]; then
	date
elif [ "1$" == "--logs" ]; then
	count=${2:-100}
	for i in $(seq 1 $count); do
		echo "Plik: log${i}.txt | Skrypt: $0 | Data: $(date)" > log${i}.txt
	done
elif [ "$1" == "--help" ]; then
	echo "Instrukcja obslugi skryptu:"
	echo "--date	: Wyswietla date i godzine"
	echo "--logs [n]	: Tworzy n plikow log ( domyslne tworzy 100)"
	echo "--help		: Wyswietla te liste opcji "
fi

