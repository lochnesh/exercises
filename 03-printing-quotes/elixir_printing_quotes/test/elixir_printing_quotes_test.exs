defmodule ElixirPrintingQuotesTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirPrintingQuotes

  test "output quote and author" do
    assert capture_io([input: "test\n"], fn ->
      ElixirPrintingQuotes.main([])
    end) == "What is the quote? Who is the author? "
  end
end
