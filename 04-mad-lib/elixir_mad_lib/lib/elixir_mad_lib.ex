defmodule ElixirMadLib do
  @moduledoc """
  A program that creates madlibs
  """

  @spec main(list(String.t())) :: :ok
  def main(_args) do
    print(&IO.gets/1)
  end

  @spec print((String.t() -> String.t())) :: :ok
  def print(input_func) do
    noun = "Enter a noun : " |> read(input_func)
    verb = "Enter a verb : " |> read(input_func)
    adjective = "Enter an adjective : " |> read(input_func)
    adverb = "Enter an adverb : " |> read(input_func)

    IO.puts("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hillarious!")
  end

  defp read(prompt, input_func) do
    prompt
    |> input_func.()
    |> String.trim()
  end
end
