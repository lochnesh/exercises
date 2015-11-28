defmodule ElixirCountCharacters do

  def main(_args) do
    IO.gets("What is the input string? ")
    |> String.strip
    |> create_output
    |> IO.puts
  end

  defp create_output(input) do
    "#{input} has #{String.length(input)} characters."
  end

end
