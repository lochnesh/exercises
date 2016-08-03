Feature: 03 Printing quotes
 Scenario: Elixir
     When I run `./03-printing-quotes/elixir_printing_quotes/elixir_printing_quotes` interactively
     And I type "Luke, I am your father."
     And I type "Darth Vader"
     Then the output should contain "What is the quote? "
     And the output should contain "Who is the author? "
     And the output should contain: 
       """
       Darth Vader says, "Luke, I am your father.
       """
