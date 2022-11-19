#!/bin/bas

rm ~/.vimrc #removes this file from the home dir

sed 's/source ∼/.dotfiles/bashrc custom/' ~/.bashrc #reoves the string in the file and replaces it with nothing 

rm ~/.TRASH
