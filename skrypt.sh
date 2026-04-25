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
	--init)
	   git clone https://github.com/JM8932/Lab4_Narz-dzia_w-bran-y_IT.git
   	   export PATH=$PATH:$(pwd)
	   echo "Repozytorium sklonowane, PATH zaktualizowany."
	  ;;



esac

