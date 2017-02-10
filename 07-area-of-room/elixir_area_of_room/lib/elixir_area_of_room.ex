defmodule ElixirAreaOfRoom do

  alias ElixirAreaOfRoom.Area, as: Area
  alias ElixirAreaOfRoom.Conversion, as: Conversion

  @moduledoc """
  Program that calculates the area of a rectangular room
  """

  @spec main(list(String.t)) :: :ok
  def main(_), do: run(&IO.gets/1)

  @spec run((String.t -> String.t)) :: :ok
  def run(input) do
    length = "What is the length of the room in feet? " |> read(input)
    width = "What is the width of the room in feet? " |> read(input)
    "You entered the dimensions of #{length} feet by #{width} feet." |> IO.puts
    "The area is" |> IO.puts
    area = Area.in_feet(length, width)
    "#{area} square feet" |> IO.puts
    area_in_meters = Conversion.feet_to_meters(area)
    "#{area_in_meters} square meters" |> IO.puts
  end

  defp read(prompt, input) do
    prompt
    |> input.()
    |> String.trim
    |> String.to_float
  end

end
