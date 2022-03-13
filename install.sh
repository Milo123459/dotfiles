#!/bin/sh
curl -sS https://starship.rs/install.sh | sh -s -- -y
cp ./starship.toml ~/.config/starship.toml
