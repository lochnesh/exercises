defmodule ElixirMadLib do

  @moduledoc """
  A program that creates madlibs
  """

  def main(_args) do
    [
      noun: fn -> "Enter a noun : " |> IO.gets |> String.strip end,
      verb: fn -> "Enter a verb : " |> IO.gets |> String.strip end,
      adjective: fn -> "Enter an adjective : " |> IO.gets |> String.strip end,
      adverb: fn -> "Enter an adverb : " |> IO.gets |> String.strip end]
    |> print
  end

  def print(mad_lib) do

    noun = mad_lib[:noun].()
    verb = mad_lib[:verb].()
    adjective = mad_lib[:adjective].()
    adverb = mad_lib[:adverb].()

    IO.puts(
      "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hillarious!"
      )
  end

end
