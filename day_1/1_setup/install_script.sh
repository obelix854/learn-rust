#!/bin/bash

# Function to install Rust on Unix-based systems
install_rust_unix() {
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
}

# Function to check if Rust is already installed
check_rust_installed() {
    if rustc --version &> /dev/null; then
        echo "Rust is already installed."
        rustc --version
        cargo --version
        return 0
    fi
    return 1
}

# Detecting OS and proceeding with the appropriate installation
OS="`uname`"
case $OS in
  'Linux' | 'FreeBSD' | 'Darwin')
    echo "OS detected: $OS"
    if ! check_rust_installed; then
        install_rust_unix
    fi
    ;;
  'CYGWIN' | 'MINGW' | 'MSYS')
    echo "Windows subsystem detected. Please ensure you have WSL or similar enabled."
    if ! check_rust_installed; then
        install_rust_unix
    fi
    ;;
  *)
    echo "OS $OS is not supported by this script. Please follow the manual installation instructions."
    ;;
esac
