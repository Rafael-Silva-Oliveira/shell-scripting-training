#!/usr/bin/env bash

directory=$(readlink -f "$1") # the readlink -f "$1" command is used to resolve any symbolic links and get the absolute path of the directory variable

if grep -q "\"$directory" <<<"$directory" ; then
    # Replace \ with / in directory name.
    directory=${directory//\\//}
    echo "New directory name: $directory"
fi

for file in "$directory"/*; do
    echo "$file"
done