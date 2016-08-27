defmodule ElixirMadLibTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirMadLib

  test "prints mad lib" do
    input = fn(prompt) -> 
      case prompt do
        "Enter a noun : " -> "dog"
        "Enter a verb : " -> "walk"
        "Enter an adjective : " -> "blue"
        "Enter an adverb : " -> "quickly"
      end
    end
    assert capture_io(fn ->
      ElixirMadLib.print(input)
    end) == "Do you walk your blue dog quickly? That's hillarious!\n"
  end
end
