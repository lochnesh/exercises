defmodule Author do

  @moduledoc """
  Requests an author from IO
  """

  def get() do
    "Who is the author? "
    |> IO.gets
    |> String.strip
  end
end
