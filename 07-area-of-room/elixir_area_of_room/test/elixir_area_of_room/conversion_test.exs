defmodule ElixirAreaOfRoom.ConversionTest do
  use ExUnit.Case
  doctest ElixirAreaOfRoom.Conversion

  test "converts feet to meters" do
    assert ElixirAreaOfRoom.Conversion.feet_to_meters(300) == 27.871
  end

end
