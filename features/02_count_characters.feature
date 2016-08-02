Feature: 02 Count characters
 Scenario: Elixir
     When I run `./02-count-characters/elixir_count_characters/elixir_count_characters` interactively
     And I type "This is the future!"
     Then the output should contain "What is the input string? "
     And the output should contain "This is the future! has 19 characters."
