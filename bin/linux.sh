#!/bin/bash


if [[ $uname  = 'Linux' ]]; then #checksif the username is the string linux 
echo " This is a test"
else
	echo "ERROR" >> linuxsetup.log #redirects the error message tothis file
	exit
	
fi

if [ -f ".vimrc" ];then #This checks if ".vimrc" exists
	mv .vimrc .bup_vimrc # renames the files
	echo "the current .vimrc file was changed to ‘.bup vimrc’." >> linuxsetup.log
fi

vimrc > ~/.vimrc #overwrites the files

echo "source ∼/.dotfiles/etc/bashrc custom" >> .bashrc #adds the string to the end of the file
