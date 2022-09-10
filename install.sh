#!/usr/bin/env bash
if [ ! -d "$HOME/.config" ]; then mkdir "$HOME/.config"; fi
cp .bashrc $HOME/.bashrc
cp starship.toml $HOME/.config/starship.toml
curl -sS https://starship.rs/install.sh | sh -s -- -y
curl -fsSL https://raw.githubusercontent.com/Milo123459/glitter/master/install.sh | bash -s -- -y 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
rustup default stable
sudo apt install fzf
gh extension install mislav/gh-branch
curl -fsSL https://tailscale.com/install.sh | sh