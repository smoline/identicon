defmodule Identicon do
  def hello do
    "Hello!"
  end
  # What we want to do...
  # iex> hash = :crypto.hash(:md5, "banana")
  # <<114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65>>
  # iex> :binary.bin_to_list(hash)
  # [114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]
  # If we wanted to
  # iex> Base.encode16(hash)
  # "72B302BF297A228A75730123EFEF7C41"

  @moduledoc """
    Provides methods for converting strings into images
  """

  @doc """
    Given a string input, converts the string into a hex list

  ## Examples

      iex> Identicon.main("asdf")
      %Identicon.Image{
        hex: [145, 46, 200, 3, 178, 206, 73, 228, 165, 65, 6, 141, 73, 90, 181, 112]
      }

  """

  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  def pick_color(image) do
    %Identicon.Image{hex: [r, g, b | _tail]} = image

    [r, g, b]
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
