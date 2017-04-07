defmodule ElixirRetirementCalculator do

  @moduledoc """
  A program that calculates how long until the user retires
  """

  @spec main(list(String.t)) :: :ok
  def main(_), do: run(&IO.gets/1, &get_current_year/0)

  @spec run((String.t -> String.t), (() -> String.t)) :: :ok
  def run(input_func, year_func) do
    age = "What is your current age? "
      |> get_input(input_func)
    retirement_age = "At what age would you like to retire? "
      |> get_input(input_func)
    year = year_func.()
    retirement_year = time_to_retire(age, retirement_age, year)
    years_to_retirement = years_to_retirement(age, retirement_age)
    IO.puts("You have #{years_to_retirement} years left until you can retire.")
    IO.puts("It's #{year}, so you can retire in #{retirement_year}.")
  end

  defp time_to_retire(age, retirement_age, current_year) do
    current_year + years_to_retirement(age, retirement_age)
  end

  defp years_to_retirement(age, retirement_age) do
    retirement_age - age
  end

  defp get_current_year do
    {{year, _, _}, _} = :calendar.local_time()
    year
  end

  defp get_input(prompt, input_func) do
    prompt
    |> input_func.()
    |> String.trim
    |> String.to_integer
  end

end
