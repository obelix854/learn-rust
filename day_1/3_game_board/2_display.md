# Displaying the Game Board

After initializing the game board, the next step is to display it to the console. This step is essential for creating an interactive Tic Tac Toe game.

## Display Function

We'll write a function to display the game board in a user-friendly format. Our goal is to visually represent the board in the console.

## Code Example
```rust
fn display_board(board: &Vec<Vec<char>>) {
    for row in board {
        // Create a string to represent the current row
        let mut row_display = String::new();
        for &cell in row {
            // Append each cell and its brackets to the row string
            row_display.push_str(&format!("[{}]", cell));
        }
        // Print the entire row followed by a newline
        println!("{}", row_display);
    }
}

fn main() {
    let board = vec![vec![' '; 3]; 3]; // Example board
    display_board(&board);
}
```

This function iterates over each cell of the game board, printing its value within brackets. After each row, it moves to a new line, creating a grid appearance in the console.

---

### Additional Tip 1: Understanding the Use of `&` in Rust

In Rust, the `&` symbol is used to create a reference to a value without taking ownership of it. This concept, known as "borrowing," is a cornerstone of Rust's memory safety and concurrency features.

#### Why Use `&` in Function Arguments?

When we define the `display_board` function to take `&Vec<Vec<char>>` as its parameter, we're telling Rust that we want to borrow the game board for the duration of the function call. Here's why this is important:

- **Memory Efficiency:** By borrowing the game board, we avoid copying the entire data structure when the function is called. For large or complex data structures, this can significantly improve performance.

- **Ownership and Borrowing Rules:** Rust's ownership system ensures that data is automatically returned once the borrowing ends, preventing dangling references and memory leaks. The `&` symbol is a promise that `display_board` won't modify the borrowed data, allowing Rust to enforce its safety guarantees at compile time.

#### How Does Borrowing Work?

When you pass a value to a function using `&`, you are passing a reference to that value. The function can read the value via the reference, but it cannot change the original value unless the reference is mutable (denoted as `&mut`).

In the context of our Tic Tac Toe game, here's what happens:

```rust
fn display_board(board: &Vec<Vec<char>>) {
    // Function body
}
```

- `board` is a reference to a vector of vectors of `char`.
- The function can read from `board` to display it, but it cannot modify the original game board that was passed in.

### Additional Tip 2: Understanding `&format!` in String Manipulation

In Rust, string formatting is often performed using the `format!` macro. This macro works similarly to `println!`, but instead of printing the output to the console, it returns a formatted string. When you see `&format!`, it involves creating a formatted string and then taking a reference to that string.

#### How `format!` Works

The `format!` macro allows you to interpolate variables into a string. For example:

```rust
let name = "world";
let greeting = format!("Hello, {}!", name);
```

This code will store `"Hello, world!"` in the `greeting` variable.

#### Why Use `&format!`?

In our game board display function, you might come across a line like this:

```rust
row_display.push_str(&format!("[{}]", cell));
```

Here, `format!("[{}]", cell)` dynamically creates a string with the cell's value enclosed in brackets. The `&` before `format!` is used to take a reference to the string returned by `format!`. This is necessary because `push_str` expects a string slice (`&str`), not an owned `String`.

#### String Ownership and Borrowing

Rust's ownership system ensures memory safety and efficient resource management. When you use `format!`, it returns an owned `String`. However, if you need to use this string temporarily without taking ownership, you can borrow it using `&`, turning it into a `&str`, a string slice that can be passed around cheaply.

#### Efficiency in String Manipulation

Using `format!` to interpolate variables and `&` to borrow the resulting string is common in Rust, especially when you need to concatenate or manipulate strings without unnecessary copying or ownership transfer. It allows for efficient string manipulation, crucial in performance-sensitive application.

Remember, while `&format!` is a useful pattern, always consider the context and whether borrowing or ownership is appropriate for your specific use case.


