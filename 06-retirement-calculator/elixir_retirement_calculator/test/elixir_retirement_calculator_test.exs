defmodule ElixirRetirementCalculatorTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest ElixirRetirementCalculator

  test "calculator prints time to retirement" do
    input = fn(x) -> input_fake(x) end
    year = ElixirRetirementCalculator.get_current_year()
    years_to_retirement = ElixirRetirementCalculator.years_to_retirement(30, 65)
    assert capture_io(fn ->
        ElixirRetirementCalculator.retirement_runner(input)
    end) == "You have #{years_to_retirement} years left until you can retire.\nIt's #{year}, so you can retire in #{ElixirRetirementCalculator.time_to_retire(30, 65, year)}.\n"

  end

  def input_fake(input) do
    case input do
     "What is your current age? " -> "30\n"
     "At what age would you like to retire? " -> "65\n"
    end
  end

end
