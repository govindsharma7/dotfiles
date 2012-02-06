#!/bin/sh

# Install script for Josh Dick's dotfiles
# <https://github.com/joshdick/dotfiles>

for file in `find ${PWD} -maxdepth 1 -name \*.symlink`; do
    src_file=`basename "$file"`
    dest_file=`echo ".$src_file" | sed "s/\.symlink//g"`
    ln -sv `pwd`/$src_file ~/$dest_file
done
