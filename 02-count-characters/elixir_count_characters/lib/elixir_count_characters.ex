defmodule ElixirCountCharacters do

  def main(_args) do
    get_input
    |> create_output
    |> IO.puts
  end

  defp get_input() do
    input = IO.gets("What is the input string? ")
    |> String.strip
    case input do
      "" -> get_input
      not_empty -> not_empty
    end
  end

  defp create_output(input) do
    "#{input} has #{String.length(input)} characters."
  end

end
