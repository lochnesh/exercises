defmodule ElixirRetirementCalculatorTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirRetirementCalculator

  test "calculator prints time to retirement" do
    year = fn -> 2016 end

    assert capture_io(fn ->
             ElixirRetirementCalculator.run(&input_fake(&1), year)
           end) == """
           You have 35 years left until you can retire.
           It's #{year.()}, so you can retire in 2051.
           """
  end

  defp input_fake(input) do
    case input do
      "What is your current age? " -> "30\n"
      "At what age would you like to retire? " -> "65\n"
    end
  end
end
