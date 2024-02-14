
# Data Types in Rust

Rust is a statically typed language, which means it must know the types of all variables at compile time. The compiler can usually infer what type we want to use based on the value and how we use it.

## Scalar Types

Rust has four primary scalar types: integers, floating-point numbers, Booleans, and characters.

### Integer Types

```rust
let lives: u8 = 3; // u8: unsigned 8-bit integer
```


### Floating-Point Types

```rust
let speed: f32 = 2.5; // f32: 32-bit floating point
```

Floating-point numbers are often used for more nuanced values, such as player movement speed.

### Boolean Type

```rust
let is_game_over: bool = false;
```

Booleans are crucial for game logic, such as tracking game states.

### Character Type

```rust
let initial: char = 'S';
```

Characters can be used for player initials or other text representations in games.

## Compound Types

Compound types can group multiple values into one type. Rust has two primitive compound types: tuples and arrays.

### Tuples

```rust
let position: (i32, i32) = (10, 50);
```

Tuples are useful for handling related values, like coordinates in a game.

### Arrays

```rust
let high_scores = [50, 100, 150];
```

Arrays are useful for storing fixed-size collections, such as scores or inventory items.