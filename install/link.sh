#!/usr/bin/env zsh

DOTFILES=$HOME/git/dotfiles

echo -e "\nCreating symlinks"
echo "=============================="
for file in $DOTFILES/*.symlink ; do
    target="$HOME/.$( basename $file ".symlink" )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file at $target"
        ln -s $file $target
    fi
done
