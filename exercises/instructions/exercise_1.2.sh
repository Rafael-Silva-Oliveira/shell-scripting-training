#!/bin/bash

for file in ./exercises/sample_[0-9][0-9].fasta; do
	echo -n "Max sequence ccounts for a single specis $file:"

	grep -o 's:.*;' "$file" | sort | uniq -c | sort -nr | head -1 
done
