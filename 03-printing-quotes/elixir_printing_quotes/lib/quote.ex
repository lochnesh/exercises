defmodule Quote do

  @moduledoc """
  Gets a quote from IO
  """

  def get() do
    "What is the quote? "
    |> IO.gets
    |> String.strip
  end
end
