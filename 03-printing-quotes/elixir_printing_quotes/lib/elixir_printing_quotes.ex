defmodule ElixirPrintingQuotes do
  @moduledoc """
  An app that prints a quote and the author
  """

  Application.load(:elixir_printing_quotes)
  @author Application.get_env(:elixir_printing_quotes, :author)
  @quote Application.get_env(:elixir_printing_quotes, :quote)

  @spec main(list(String.t())) :: :ok
  def main(_args) do
    the_quote = @quote.get()
    author = @author.get()
    IO.puts(get_output(author, the_quote))
  end

  defp get_output(author, the_quote) do
    author <> " says, \"" <> the_quote <> "\""
  end
end
