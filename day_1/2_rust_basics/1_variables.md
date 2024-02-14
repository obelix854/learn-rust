
# Variables and Mutability in Rust

Rust's approach to variables and constants is designed with safety and concurrency in mind. Understanding the difference between `const` and `let`, and how `mut` interacts with `let`, is fundamental to writing Rust programs.

## Declaring Variables with `let`

Variables in Rust are declared using the `let` keyword. By default, variables are immutable:

```rust
let x = 5;
```

Attempting to reassign a value to `x` will result in a compile-time error. Rust's default immutability is a deliberate design choice to enhance code safety and clarity.

### Making Variables Mutable with `mut`

To declare a variable whose value can be changed, use `let` with the `mut` keyword:

```rust
let mut x = 5;
x = 10; // This is allowed because x is mutable
```

Mutability is explicitly opted into, reflecting Rust's emphasis on safety. Mutable variables are essential when you need to modify the state of a variable, such as updating the score in a game or changing the position of a game entity.

## Constants with `const`

The `const` keyword is used to define constants in Rust. Constants are always immutable and must be annotated with their type. Unlike variables declared with `let`, constants can only be set with a value that can be determined at compile time:

```rust
const MAX_POINTS: u32 = 100;
```

Constants are useful for values that are truly constant and known before the program runs, such as configuration values or mathematical constants.

### Differences Between `const` and `let`

- **Immutability:** Variables declared with `let` can be made mutable with `mut`. In contrast, `const` declares an absolutely immutable value.
- **Compile-time vs. Runtime:** `const` requires values that can be determined at compile time, while `let` allows assigning values that are computed at runtime.
- **Scope and Usage:** `const` is used for values that are global and unchanging throughout the program, whereas `let` is used for local variables that may or may not change.

### Summary

- Use `const` for defining fixed values that do not change and are known at compile time. Constants are useful for application-wide settings or domain-specific constants.
- Use `let` to declare variables, opting into mutability with `mut` when necessary. This allows for more flexible and dynamic programming patterns, especially useful in scenarios where the value of the variable needs to change in response to program logic.
