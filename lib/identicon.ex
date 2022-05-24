defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  def main(input) do
    input
    |> hash_input
  end

  @doc """
  Generate a list of bytes, based in a given string.

  ## Examples

      iex> Identicon.hash_input("banana")
      [114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]
  """
  @spec hash_input(String.t()) :: list(byte())
  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end
end
