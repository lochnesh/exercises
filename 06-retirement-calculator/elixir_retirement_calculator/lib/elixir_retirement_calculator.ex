defmodule ElixirRetirementCalculator do

  @moduledoc """
  A program that calculates how long until the user retires
  """

  def main(_args) do
    input = fn(x) -> IO.gets(x) end
    retirement_runner(input)
  end

  def retirement_runner(input) do
    age = input.("What is your current age? ")
      |> String.trim
      |> String.to_integer
    retirement_age = input.("At what age would you like to retire? ")
      |> String.trim
      |> String.to_integer
    year = year()
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

  def year() do
    {{year, _, _},_} = :calendar.local_time()
    year
  end

end
