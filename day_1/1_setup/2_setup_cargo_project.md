# Setting Up a Rust Project with Cargo

This guide will walk you through the steps of creating a new Rust project using Cargo, Rust's package manager, and build system. By the end of this guide, you'll have a new Rust project ready for development.

## Prerequisites

- Ensure Rust and Cargo are installed on your system. They are installed together by default using [rustup](https://rustup.rs/). You can verify the installation by running the following commands in your terminal:

```bash
rustc --version
cargo --version
```

## Step 1: Creating a New Project

1. Open your terminal.
2. Navigate to the directory where you want your project to be located.
3. Execute the command below to create a new Rust project named `tic_tac_toe`. Replace `tic_tac_toe` with your preferred project name.

```bash
cargo new tic_tac_toe
```

This command creates a directory named after your project, initializes a Git repository if Git is installed, and generates the initial files: `Cargo.toml` for project configuration and `src/main.rs` with a simple "Hello, world!" program.

## Step 2: Exploring `Cargo.toml`

After creating your project, you'll find a `Cargo.toml` file at the root. This file is the manifest of your Rust project. Here's an example of what it looks like:

```toml
[package]
name = "tic_tac_toe"
version = "0.1.0"
edition = "2018" # or "2021"

[dependencies]
```

- The `[package]` section includes basic information about your project.
- `edition` specifies the Rust edition the project uses.
- The `[dependencies]` section is where you list external crates (libraries) your project depends on.

## Step 3: Adding Dependencies

To add dependencies to your project:

1. Find the crate you want to add on [crates.io](https://crates.io/).
2. Note the latest version.
3. Add it to your `Cargo.toml` under `[dependencies]`, like so:

```toml
[dependencies]
rand = "0.8.3"
```

Replace `"0.8.3"` with the latest version of the crate you're adding.

## Step 4: Building and Running Your Project

- **Build your project**: Run `cargo build` in your project's root directory. This compiles your project and its dependencies.
- **Run your project**: Execute `cargo run`. This command builds (if necessary) and runs your project.
