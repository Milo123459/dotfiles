#!/usr/bin/env bash
if [ ! -d "$HOME/.config" ]; then mkdir "$HOME/.config"; fi
cp .bashrc $HOME/.bashrc
cp starship.toml $HOME/.config/starship.toml
curl -sS https://starship.rs/install.sh | sh -s -- -y
curl -fsSL https://raw.githubusercontent.com/Milo123459/glitter/master/install.sh | bash -s -- -y 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
rustup default stable
if ! [ -x "$(command -v gh)" ]; then
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
        && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
        && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
        && apt-get update && export DEBIAN_FRONTEND=noninteractive \
        && apt-get -y install --no-install-recommends gh
fi
sudo apt install fzf
gh extension install mislav/gh-branch