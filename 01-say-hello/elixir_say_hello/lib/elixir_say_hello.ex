defmodule ElixirSayHello do

  @moduledoc """
  Main class for Elixir say hello app
  """

  @spec main(list(String.t)) :: :ok
  def main(_args) do
    prompt_for_name()
    |> create_greeting()
    |> print_greeting()
  end

  defp prompt_for_name do
    IO.gets "What is your name? "
  end

  defp create_greeting(name) do
    "Hello, #{String.trim(name)}, nice to meet you!"
  end

  defp print_greeting(greeting) do
    IO.puts greeting
  end
end
