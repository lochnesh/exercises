defmodule ElixirAreaOfRoom.AreaTest do
  use ExUnit.Case
  doctest ElixirAreaOfRoom.Area

  test "calculates area of room in feet" do
    assert ElixirAreaOfRoom.Area.in_feet(15, 20) == 300
  end

end
