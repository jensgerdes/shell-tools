#!/usr/bin/env bash

#########################
# Iterate over an array #
#########################

beer_names=(
    Flensburger
    Jever
    Heineken
    Astra
)

echo "${#beer_names[*]} Beer names:"
for beer in "${beer_names[@]}"
do
    echo "  * ${beer}"
done