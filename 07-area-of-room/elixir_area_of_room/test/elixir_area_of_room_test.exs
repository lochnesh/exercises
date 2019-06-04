defmodule ElixirAreaOfRoomTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirAreaOfRoom

  test "run produces expected results" do
    length = 15.0
    width = 20.0
    read = fn(prompt) ->
      case prompt do
        "What is the length of the room in feet? " -> "#{length}\n"
        "What is the width of the room in feet? " -> "#{width}\n"
      end
    end

    assert capture_io(fn ->
      ElixirAreaOfRoom.run(read)
    end
    ) == """
    You entered the dimensions of #{length} feet by #{width} feet.
    The area is
    300.0 square feet
    27.871 square meters
    """
  end

end
