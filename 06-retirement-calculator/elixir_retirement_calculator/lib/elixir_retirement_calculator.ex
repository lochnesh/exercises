defmodule ElixirRetirementCalculator do

  @moduledoc """
  A program that calculates how long until the user retires
  """

  def main(_args) do
    input = fn(x) -> x |> IO.gets() end
    retirement_runner(input)
  end

  def retirement_runner(input) do
    age = "What is your current age? "
      |> input.()
      |> String.trim
      |> String.to_integer
    retirement_age = "At what age would you like to retire? "
      |> input.()
      |> String.trim
      |> String.to_integer
    year = get_current_year()
    retirement_year = time_to_retire(age, retirement_age, year)
    years_to_retirement = years_to_retirement(age, retirement_age)
    IO.puts("You have #{years_to_retirement} years left until you can retire.")
    IO.puts("It's #{year}, so you can retire in #{retirement_year}.")
  end

  def time_to_retire(age, retirement_age, current_year) do
    years_to_retire = retirement_age - age
    current_year + years_to_retire
  end

  def years_to_retirement(age, retirement_age) do
    retirement_age - age
  end

  def get_current_year() do
    {{year, _, _},_} = :calendar.local_time()
    year
  end

end
