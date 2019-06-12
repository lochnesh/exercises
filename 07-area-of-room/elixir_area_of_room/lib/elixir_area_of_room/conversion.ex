defmodule ElixirAreaOfRoom.Conversion do
  @moduledoc """
  Formula to convert feet to meters
  """

  @spec feet_to_meters(float) :: float
  def feet_to_meters(feet), do: Float.round(feet * 0.09290304, 3)
end
