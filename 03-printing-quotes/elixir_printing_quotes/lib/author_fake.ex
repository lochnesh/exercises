defmodule AuthorFake do

  @moduledoc """
  Fake implementation of author IO
  """

  def get() do
    author = "Obi-Wan Kenobi"
    IO.gets "Who is the author? "
    IO.puts author
    author
  end
end
