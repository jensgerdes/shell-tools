#!/usr/bin/env bash

echo "Installing brew packages taken from 'brew_packages'..."
for i in $(cat brew_packages); 
do
  brew install "$i"
done

echo
echo "---"
echo
echo "Installing brew casks taken from 'brew_casks'..."
for i in $(cat brew_casks); 
do
  brew cask install "$i"
done
