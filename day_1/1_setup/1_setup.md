# Environment Setup for Rust Workshop

Welcome to the Tic Tac Toe Rust Workshop! Before we dive into coding, it's essential to set up your Rust development environment. This guide will walk you through automated and manual installation processes.

## Automated Installation with Script

For Unix-like systems (including Linux, macOS, and Windows with WSL), we provide a script that automatically installs Rust.

### Steps:

1. **Download the Installation Script:**
   - Open a terminal.
   - Use the following command to download the script:
     ```
     curl -O https://github.com/obelix854/learn-rust/edit/main/day_1/1_setup/1_setup.md
     ```


2. **Make the Script Executable:**
   - In the terminal, run:
     ```
     chmod +x install_rust.sh
     ```

3. **Run the Script:**
   - Execute the script by running:
     ```
     ./install_rust.sh
     ```
   - The script will detect your OS, install Rust, and verify the installation.

### Note for Windows Users Without WSL:
If you're not using WSL, Cygwin, or similar, please follow the manual installation instructions below.

## Manual Installation

### For Unix-like Systems and Windows with WSL:

1. **Install Rust:**
   - Open a terminal.
   - Run the following command:
     ```
     curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
     ```
   - Follow the on-screen instructions.

2. **Verify Installation:**
   - Ensure Rust was installed successfully by running:
     ```
     rustc --version
     ```
     ```
     cargo --version
     ```

### For Windows (Without WSL):

1. **Download Rust Installer:**
   - Go to the [official Rust website](https://www.rust-lang.org/tools/install) and download the Rust installer for Windows.

2. **Run the Installer:**
   - Execute the downloaded `.exe` file and follow the installation prompts.

3. **Verify Installation:**
   - Open a new command prompt and run:
     ```
     rustc --version
     ```
     ```
     cargo --version
     ```

