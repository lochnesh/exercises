defmodule ElixirAreaOfRoom.Area do
  @moduledoc """
  Formula to calculate area of a room
  """

  @spec in_feet(float, float) :: float
  def in_feet(length, width), do: length * width
end
