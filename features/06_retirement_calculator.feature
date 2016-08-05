Feature: 06 Retirement calculator
 Scenario: Elixir
     When I run `./06-retirement-calculator/elixir_retirement_calculator/elixir_retirement_calculator` interactively
     And I type "25"
     And I type "70"
     Then the output should contain "What is your current age? "
     And the output should contain "At what age would you like to retire? "
     And the output should match:
     """
     .*You have \d{1,3} years left until you can retire\.
     It's \d{4}, so you can retire in \d{4}
     """
