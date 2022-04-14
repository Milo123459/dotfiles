eval "$(starship init bash)"

nightly() {
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    rustup toolchain add nightly
    rustup default nightly
}