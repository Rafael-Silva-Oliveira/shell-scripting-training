#!/usr/bin/env bash

num_files=$1

# If empty, default to 5
[ -z $num_files ] && num_files=5

for ((n=1; n<=$num_files; n++)); do
    touch "empty_file_$n.txt"
done

echo "Generated $num_files empty files in path $(pwd)"