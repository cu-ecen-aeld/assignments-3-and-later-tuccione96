#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Siddhant Jajoo

#run example: finder.sh /tmp/aesd/assignment1 linux

set -e
set -u


# Verifica che siano stati forniti due argomenti
if [ $# -ne 2 ]; then
    echo "Error: Invalid number of arguments"
    exit 1
fi

# Assegna gli argomenti a variabili
filesdir=$1
writestr=$2

if [ -d $filesdir ]; then 
		num_files=$(find $1 -type f | wc -l)
		matched_lines=$(grep -r "$2" $1 | wc -l)
		echo "The number of files are $num_files and the number of matching lines are $matched_lines"
else 
	echo "Error pippo: $filesdir is not a directory "
    exit 1
fi 




exit 0