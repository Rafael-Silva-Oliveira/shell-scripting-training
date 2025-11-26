#!/usr/bin/env bash

for file in empty_file_*.txt; do
	[ ! -s "$file"] && rm -i "$file"

done