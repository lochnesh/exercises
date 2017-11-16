defmodule Quote do

  @moduledoc """
  Gets a quote from IO
  """

  @spec get :: String.t
  def get do
    "What is the quote? "
    |> IO.gets()
    |> String.trim()
  end
end
