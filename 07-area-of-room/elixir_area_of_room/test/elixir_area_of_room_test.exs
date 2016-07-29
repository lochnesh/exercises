defmodule ElixirAreaOfRoomTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirAreaOfRoom

  @length 15.0
  @width 20.0

  test "run produces expected results" do
    assert capture_io(fn ->
      ElixirAreaOfRoom.run(&read/1)
    end
    ) == """
    You entered the dimensions of #{@length} feet by #{@width} feet.
    The area is
    300.0 square feet
    27.871 square meters
    """
  end

  def read(prompt) do
    case prompt do
      "What is the length of the room in feet? " -> "#{@length}\n"
      "What is the width of the room in feet? " -> "#{@width}\n" 
    end
  end

end
