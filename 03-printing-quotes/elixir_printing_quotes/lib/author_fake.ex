defmodule AuthorFake do

  def get() do
    IO.gets "Who is the author? "
    IO.puts "Someone"
  end
end
