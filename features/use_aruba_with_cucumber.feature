Feature: Run command
 Scenario: Run command
     When I run `./01-say-hello/elixir_say_hello/elixir_say_hello` interactively
     And I type "Skyler"
     And I type ""
     Then the output should contain "What is your name? "
     And the output should contain "Hello, Skyler, nice to meet you"

