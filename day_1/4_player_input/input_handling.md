# Handling Player Input in Rust

Creating interactive applications in Rust requires understanding how to read user input and respond to it. In this tutorial, we'll cover how to handle player input for our Tic Tac Toe game.

## Reading Input from the Console

Rust's standard library provides a straightforward way to read input from the console through the `std::io` module.

### Basic Steps to Read Input

1. **Import the `std::io` Module**

First, make sure to import the `std::io` module at the beginning of your Rust file:

```rust
use std::io;
```

2. **Use `io::stdin().read_line()` to Read Input**

To read input, you'll use the `io::stdin().read_line(&mut variable)` method, which stores the input into a variable.

### Example: Reading a Player's Move

```rust
fn main() {
    println!("Enter your move (format: row col): ");

    let mut player_input = String::new();
    io::stdin().read_line(&mut player_input)
        .expect("Failed to read line");

    println!("You entered: {}", player_input.trim());
}
```

This code snippet prompts the player to enter their move, reads the input from the console, and prints it back.

## Parsing Input

In a Tic Tac Toe game, you'll likely need the input in a specific format, such as two integers representing the row and column. Here's how you can parse the input:

```rust
let mut player_input = String::new();
io::stdin().read_line(&mut player_input)
    .expect("Failed to read line");

let parts: Vec<&str> = player_input.trim().split_whitespace().collect();
let row: usize = parts[0].parse().expect("Please type a number!");
let col: usize = parts[1].parse().expect("Please type a number!");

println!("Row: {}, Col: {}", row, col);
```


### Additional Tip: Understanding `.expect()` in Error Handling

When working with operations in Rust that might fail, such as reading input from the console, it's crucial to handle potential errors gracefully. The `.expect()` method is a common tool used in Rust for this purpose, especially in examples, prototypes, or cases where an error is unexpected.

#### How `.expect()` Works

- `.expect()` is called on a `Result` type, which signifies an operation that can either succeed (`Ok`) or fail (`Err`).
- If the operation succeeds, `.expect()` simply returns the success value inside the `Ok`, and your program continues normally.
- If the operation fails, `.expect()` causes your program to panic and terminate immediately, displaying the custom error message provided to it.

#### Why Use `.expect()`?

- **Quick and Easy:** For quick tests or prototypes where detailed error handling isn't a priority, `.expect()` allows you to avoid unwieldy error handling boilerplate.
- **Asserting Success:** When you're confident an error won't occur or you want your program to stop immediately if it does, `.expect()` clearly communicates these expectations.
- **Debugging:** The custom error message you provide to `.expect()` can give you immediate context about what went wrong, making it easier to debug issues.

#### Example Usage

```rust
io::stdin().read_line(&mut player_input).expect("Failed to read line");
```

In this line, if reading from the standard input fails for any reason, the program will panic with the message "Failed to read line", making it clear that the error occurred during input reading.

#### Caution in Production Code

While `.expect()` is incredibly useful for examples and prototypes, using it in production code requires caution. Panicking in a production environment can lead to program termination and a poor user experience. Instead, consider more nuanced error handling strategies for robust applications, such as pattern matching on the `Result`, using `.unwrap_or_else()`, or propagating errors for higher-level decision-making.



