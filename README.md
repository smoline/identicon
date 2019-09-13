# Identicon
Uses the MD5 hashing algorithm to create a unique graphical identicon based on an input string.

## What I Learned 
- Pattern matching within function arguments
- Greater understanding of the pipe operator and the way Elixir is meant to be used
- Mapping and iterating through Elixir data structures
- Better knowledge of Elixir library

## How I did it
The `main` function in the Identicon module structure:

1. We needed to hash the input string
2. Then take the first three integers for r, g, b color
3. Chunk_every 3 numbers, flatten them, then add an index to each element
4. filter out the odd numbers
5. map the coordinates for the colored squares
6. create a 2D image using erlang egd

## Getting up and running
- Run `iex -S mix` in the root directory
- Run `Identicon.main("string")`
