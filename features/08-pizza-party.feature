Feature: 08 Pizza Party
 Scenario: Python
     When I run `./08-pizza-party/python-pizza-party/main.py` interactively
     And I type "3"
     And I type "2"
     Then the output should contain "How many people? "
     And the output should contain "How many pizzas? "
     And the output should contain "3 people with 2 pizzas"
     And the output should contain "Each person gets 5 pieces of pizza."
     And the output should contain "There are 1 leftover pieces."
