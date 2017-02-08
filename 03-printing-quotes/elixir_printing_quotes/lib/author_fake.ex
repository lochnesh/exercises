defmodule AuthorFake do

  @moduledoc """
  Fake implementation of author IO
  """

  @spec get :: String.t
  def get do
    author = "Obi-Wan Kenobi"
    IO.gets "Who is the author? "
    IO.puts author
    author
  end
end
