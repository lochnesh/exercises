defmodule AuthorTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Author

  test "prompts user for the author" do
    author = "Obi-Wan Kenobi"

    assert capture_io([input: "#{author}\n"], fn ->
             assert author == Author.get()
           end) == "Who is the author? "
  end
end
