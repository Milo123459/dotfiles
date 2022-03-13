#!/bin/sh
curl -sS https://starship.rs/install.sh | sh -s -- -y
ls
cp ./starship.toml ~/.config/starship.toml
