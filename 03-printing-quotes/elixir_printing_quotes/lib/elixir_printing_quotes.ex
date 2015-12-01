defmodule ElixirPrintingQuotes do

  def main(_args) do
    the_quote = Quote.get()
    author = Author.get()
  end

end
