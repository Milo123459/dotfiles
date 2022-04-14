#!/usr/bin/env bash

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "copy bashrc"
cp $DIR/.bashrc $HOME/.bashrc

echo "installing starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "copying starship config"
cp $DIR/starship.toml $HOME/.config/starship.toml
