#!/bin/bash

echo "The list of input arguments is:"
for arg in "$@"; do # $@ means a list of all the arguments passed to the script.
    echo "* Argument: $arg"
done

echo -e "\nNow grep for cyanobacteria in the input data..."
grep Cyanobacteria

exit 0
