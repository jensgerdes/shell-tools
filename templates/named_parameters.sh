#!/usr/bin/env bash
set -Eeuo pipefail

#################################
# Sample using named parameters #
#################################

declare VAL_A VAL_B VAL_C VAL_D IS_FALLBACK

# Checking and loading parameters
while getopts a:b:c:d: flag
do
    case "${flag}" in
        a) VAL_A=${OPTARG};;
        b) VAL_B=${OPTARG};;
        c) VAL_C=${OPTARG};;
        d) VAL_D=${OPTARG};;
        *) IS_FALLBACK=true;;
    esac
done

echo "Values:"
echo -e "  VAL_A=${VAL_A}"
echo -e "  VAL_B=${VAL_B}"
echo -e "  VAL_C=${VAL_C}"
echo -e "  VAL_D=${VAL_D}"
echo -e "  IS_FALLBACK=${IS_FALLBACK}"