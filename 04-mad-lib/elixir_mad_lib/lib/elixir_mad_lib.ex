defmodule ElixirMadLib do

  def main(_args) do
    [
      noun: fn -> IO.gets("Enter a noun : ") |> String.strip end,
      verb: fn -> IO.gets("Enter a verb : ") |> String.strip end,
      adjective: fn -> IO.gets("Enter an adjective : ") |> String.strip end,
      adverb: fn -> IO.gets("Enter an adverb : ") |> String.strip end]
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
