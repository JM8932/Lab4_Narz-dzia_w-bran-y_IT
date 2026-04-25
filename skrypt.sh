#!/bin/bash

case "$1" in
	--date | -d)
	  date 
	  ;;
	--logs | -l)
	  count=${2:-100}
	  for i in $(seq 1 $count); do
	   echo "Plik: log${i}.txt | Skrypt: $0 | Data: $(date)" > log${i}.txt
	  done
	  ;;
	--help | -h)
	   echo "Opcje: --date (-d), --logs  (-l), --help (-h), --init, --error (-e)"
	  ;;
esac

