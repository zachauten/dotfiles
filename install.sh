#! /bin/sh

cp -r .vim $HOME
cp .bash_profile $HOME
cp .Brewfile $HOME
cp .Brewfile.lock.json $HOME

touch $HOME/.secrets

#source $HOME/.bash_profile
echo "dotfiles installed!"