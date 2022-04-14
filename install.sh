#!/usr/bin/env bash

DIR=$HOME

echo "copy bashrc"
cp .bashrc $HOME/.bashrc

echo "installing starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "copying starship config"
cp $DIR/starship.toml ~/.config/starship.toml
