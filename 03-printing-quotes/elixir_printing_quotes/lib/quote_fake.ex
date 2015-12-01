defmodule QuoteFake do

  def get() do
    IO.gets "What is the quote? "
    IO.puts "These aren't the droids you're looking for."
  end

end
