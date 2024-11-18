FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# Install Rust and ensure rustup is added to PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    echo 'source $HOME/.cargo/env' >> /root/.bashrc && \
    . "$HOME/.cargo/env" && \
    rustup default stable && \
    rustup update nightly && \
    rustup target add wasm32-unknown-unknown --toolchain nightly

# Install Subkey for Polkadot
RUN . "$HOME/.cargo/env" && \
    cargo install --git https://github.com/paritytech/substrate subkey
