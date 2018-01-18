defmodule ElixirPrintingQuotesTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  import Mox
  doctest ElixirPrintingQuotes

  test "output quote and author" do
    expect(AuthorMock, :get, fn -> "Obi-Wan Kenobi" end)
    expect(QuoteMock, :get, fn -> "These aren't the droids you're looking for." end)
    assert capture_io([input: "test\n"], fn ->
      ElixirPrintingQuotes.main([])
    end) == "Obi-Wan Kenobi says, \"These aren't the droids you're looking for.\"\n"
  end
end
