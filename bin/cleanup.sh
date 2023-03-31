#!/bin/bash

#removes .vimrc
rm -f .vimrc

#deletes the line
sed -i "/bashrc_custom/d" ~/.bashrc

#Removes the trash directory
rm -rf ~/.TRASH/

