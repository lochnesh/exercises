defmodule Author do
  @moduledoc """
  Requests an author from IO
  """

  @spec get :: String.t()
  def get do
    "Who is the author? "
    |> IO.gets()
    |> String.trim()
  end
end
