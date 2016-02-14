#!/bin/sh

read -p "Copy dotfiles to $HOME ? [y/n] " -n 1 -r

echo

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

cp -irsfT $PWD/Home $HOME/
