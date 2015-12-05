defmodule AuthorFake do

  def get() do
    author = "Obi-Wan Kenobi"
    IO.gets "Who is the author? "
    IO.puts author
    author
  end
end
