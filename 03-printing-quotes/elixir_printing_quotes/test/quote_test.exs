defmodule QuoteTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Quote

  test "prompts user for quote" do
    phrase = "These aren't the droids you're looking for."

    assert capture_io([input: "#{phrase}\n"], fn ->
             assert phrase == Quote.get()
           end) == "What is the quote? "
  end
end
