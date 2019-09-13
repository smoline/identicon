# Identicon
Uses the MD5 hashing algorithm to create a unique graphical identicon based on an input string.

## What I Learned 
- Pattern matching within function arguments
- Greater understanding of the pipe operator and the way Elixir is meant to be used
- Mapping and iterating through Elixir data structures
- Better knowledge of Elixir library

## How I did it
The `main` function in the Identicon module structure:

```elixir
def main(input) do
  input
  |> hash_input
  # => hashes the input string
  |> pick_color
  # => takes first three integers for r, g, b color
  |> build_grid
  # => chunks the list into 3's, flattens, then adds index to each element
  |> filter_odd_squares
  # => filters out the odd numbers in the list
  |> build_pixel_map
  # => maps coordinates for the colored squares
  |> draw_image
  # => creates 2D image with Erlang egd
end
```

## Getting up and running
- Run `iex -S mix` in the root directory
- Run `Identicon.main("string")`
