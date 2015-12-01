defmodule Author do

  def get() do
    IO.gets("Who is the author? ")
    |> String.strip
  end
end
