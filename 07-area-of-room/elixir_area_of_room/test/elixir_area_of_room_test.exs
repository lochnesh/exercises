defmodule ElixirAreaOfRoomTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirAreaOfRoom

  @length 15.0
  @width 20.0
  @area_in_feet 300.0
  @area_in_meters 27.871

  test "run produces expected results" do


    assert capture_io(fn ->
      ElixirAreaOfRoom.run(&read/1)
    end
    ) == "You entered the dimensions of #{@length} feet by #{@width} feet.\nThe area is\n#{@area_in_feet} square feet\n#{@area_in_meters} square meters\n"

  end

  def read(prompt) do
    case prompt do
      "What is the length of the room in feet? " -> "#{@length}\n"
      "What is the width of the room in feet? " -> "#{@width}\n" 
    end
  end

end
