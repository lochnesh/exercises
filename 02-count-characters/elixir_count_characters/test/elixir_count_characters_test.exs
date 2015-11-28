defmodule ElixirCountCharactersTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirCountCharacters

  test "count and original text are output" do
    assert capture_io([input: "Testing\n"], fn ->
      ElixirCountCharacters.main([])
    end) == "What is the input string? Testing has 7 characters.\n"
  end

  test "count multiple words" do
    assert capture_io([input: "More testing\n"], fn ->
      ElixirCountCharacters.main([])
    end) == "What is the input string? More testing has 12 characters.\n"
  end
end
