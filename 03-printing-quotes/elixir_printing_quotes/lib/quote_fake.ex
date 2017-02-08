defmodule QuoteFake do

  @moduledoc """
  Fakes getting a quote from IO
  """

  @spec get :: String.t
  def get do
    the_quote = "These aren't the droids you're looking for."
    IO.gets "What is the quote? "
    IO.puts the_quote
    the_quote
  end
end
