#!/bin/bash

for file in C:/Users/rafae/OneDrive/Documents/GitHub/ShellScriptingSIB/shell-scripting-training/exercises/data/sample_[0-9][0-9].fasta; do
	echo -n "Max sequence ccounts for a single specis $file:"

	grep -o 's:.*;' "$file" | sort | uniq -c | sort -nr | head -1 
done
