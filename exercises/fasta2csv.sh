#!/usr/bin/env bash

# Open input file
# Loop over lines:
#   - if line starts with '>' (header):
#       - start a new line
#       - print line followed by TAB
#   - else: if sequence line: print the line

file=$1
input_file=$1

[[ -e $file ]] || echo "File $file does not exist" 

# Print first content of file
line=$(head -n1 "$input_file")
[ "${line:0:1}" = ">" ] && echo "File '${input_file}' looks like a FASTA file : $(head -n1 "$input_file")"

# Or if [[ $(head -1 $input_file | cut -c1) == ">" ]]; then ...echo ...; fi

# If exists, overwrite the output file.

[ -e $file.csv ] && rm $file.csv && echo "File $file.csv was already found. It was deleted to be overwritten."

while read line; do
	if [[ ${line:0:1} == ">" ]]; then
		# Append a new line to the output file.
		echo -n "$line\t" >> $file.csv
	else
		echo -n "$line\t" >> $file.csv
	fi
done < "$file"
