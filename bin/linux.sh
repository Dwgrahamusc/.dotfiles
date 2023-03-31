#!/bin/bash

if [ $(uname) = 'Linux' ]; then
	echo "Error --> Systems name is $(uname)!"
else
	uname 2> linuxsetup.log
	exit

fi
#Creates the trash directory
mkdir -p ~/.TRASH
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc | echo "LOG --> Found existing .vimrc file! Changing its name to .bup_vimrc!" >> linuxsetup.log


fi
#overwrites the content of the etc/vimrc file to the .vimrc
cat etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
