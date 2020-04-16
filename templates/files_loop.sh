#!/usr/bin/env bash

#####################################
# Iterate over files in a directory #
#####################################
files=(/usr/local/bin/*)

echo "${#files[*]} files:"
for file in "${files[@]}"
do
    echo "  * ${file}"
done