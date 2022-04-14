#!/usr/bin/env bash

echo "installing starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo "copying starship config"
cp ./starship.toml $HOME/.config/starship.toml
