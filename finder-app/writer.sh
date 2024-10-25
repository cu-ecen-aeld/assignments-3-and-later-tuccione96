#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Siddhant Jajoo

#run example: ./writer.sh ~/Desktop/linux_assignments/text_prova prova

set -e
set -u

# Abilita l'uscita automatica in caso di errore e l'errore per variabili non definite
set -e
set -u

# Verifica che siano stati forniti due argomenti
if [ $# -ne 2 ]; then
    echo "Error: Invalid number of arguments"
    exit 1
fi

# Assegna gli argomenti a variabili
writefile=$1
writestr=$2
##WRITEDIR=/tmp/aeld-data/$3
# Creazione della directory, se non esiste
mkdir -p "$(dirname "$writefile")"
echo "scrivi $(dirname "$writefile")"
echo "$writefile"
echo "scrivi stringa: $writestr"
# Tenta di scrivere la stringa nel file
if echo "$writestr" > "$writefile"; then
    echo "Successfully wrote to $writefile"
else
    echo "Error pippo: Could not write to $writefile"
    exit 1
fi

exit 0