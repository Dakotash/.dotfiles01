#!/bin/bash

rm ~/.vimrc #removes this file from the home dir

sed 's/source ∼/.dotfiles/bashrc custom/' ~/.bashrc #removes the string in the file and replaces it with nothing 

rm ~/.TRASH #removes the TRASH dir in the home dir
