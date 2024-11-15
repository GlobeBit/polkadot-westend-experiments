FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install Substrate dependencies
RUN rustup update nightly && \
    rustup target add wasm32-unknown-unknown --toolchain nightly

# Install Subkey for Polkadot
RUN cargo install --git https://github.com/paritytech/substrate subkey
