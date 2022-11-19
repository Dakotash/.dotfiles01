#!/bin/bash


if [[ $uname  = 'Linux' ]]; then #checksif the username is the string linux 
echo " This is a test"
else
	echo "ERROR" &> linuxsetup.log #redirects the error message tothis file
	exit
	
fi

if [ -f ".vimrc" ];then
	mv .vimrc .bup_vimrc # renames the files
	echo "the current .vimrc file was changed to ‘.bup vimrc’." >> linuxsetup.log
fi

vimrc > ~/.vimrc #overwrites the files

echo "source ∼/.dotfiles/etc/bashrc custom" >> .bashrc #adds the stringto the end of the file
