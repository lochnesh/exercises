defmodule Quote do

  def get() do
    IO.gets("What is the quote? ")
    |> String.strip
  end

end
