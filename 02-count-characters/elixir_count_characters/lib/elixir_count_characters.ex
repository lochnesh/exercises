defmodule ElixirCountCharacters do
  @moduledoc """
  Program that counts characters in an input string
  """

  @spec main(list(String.t())) :: :ok
  def main(_args) do
    get_input()
    |> create_output()
    |> IO.puts()
  end

  defp get_input do
    input =
      "What is the input string? "
      |> IO.gets()
      |> String.trim()

    case input do
      "" -> get_input()
      not_empty -> not_empty
    end
  end

  defp create_output(input) do
    "#{input} has #{String.length(input)} characters."
  end
end
