#!/usr/bin/env bash

############################
# Colorizes console output #
############################

function colorize_pipe() {
    while read -r text;
    do
	if [ $# -eq 0 ]; then
	    echo -e $text;
	else
	    echo -e "\033[${1}${text}\033[${2}"
	fi
    done
}

function colorize() {
    local color=$1
    local reset=$2
    local text=$3

    # If there is a STDIN pipe, use it. Otherwise use plain args
    if [ -t 0 ]; then
        echo $text | colorize_pipe $color $reset
    else
        colorize_pipe $color $reset
    fi
}

function red() {
 	colorize 31m 39m $1
}

function blue() {
    colorize 34m 39m $1
}

function green() {
    colorize 32m 39m $1
}

function yellow() {
    colorize 33m 39m $1
}

function white() {
    colorize 97m 39m $1
}

function bold() {
    colorize 1m 22m $1
}

function italic() {
    colorize 3m 23m $1
}

function underline() {
    colorize 4m 24m $1
}

echo "Samples: "
echo "---------"
red "Red text"
echo "--"
echo "Green text" | green
echo "--"
echo "$(bold Bold) blue" | blue
echo "--"
echo "Hello, $(whoami | yellow)"

