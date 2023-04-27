#!/usr/bin/env bash
if [ ! -d "$HOME/.config" ]; then mkdir "$HOME/.config"; fi
cp .bashrc $HOME/.bashrc
cp starship.toml $HOME/.config/starship.toml
curl -sS https://starship.rs/install.sh | sh -s -- -y
curl -fsSL https://raw.githubusercontent.com/Milo123459/glitter/master/install.sh | bash -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
rustup default stable
cp cargo.toml $HOME/.cargo/config.toml
curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts
rm n
sudo npm i -g n yarn pnpm
cargo install cargo-quickinstall
curl -fsSL https://railway.app/install.sh | bash