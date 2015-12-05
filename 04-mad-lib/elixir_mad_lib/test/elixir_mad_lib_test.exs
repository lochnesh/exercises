defmodule ElixirMadLibTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirMadLib

  test "prints mad lib" do
    assert capture_io(fn ->
      mad_lib = [
        noun: fn -> "dog" end,
        verb: fn -> "walk" end,
        adjective: fn -> "blue" end,
        adverb: fn -> "quickly" end
        ]

      ElixirMadLib.print(mad_lib)
    end) == "Do you walk your blue dog quickly? That's hillarious!\n"
  end
end
