Feature: 04 Madlib
 Scenario: Elixir
     When I run `./04-mad-lib/elixir_mad_lib/elixir_mad_lib` interactively
     And I type "house"
     And I type "clean"
     And I type "dirty"
     And I type "quickly"
     Then the output should contain "Enter a noun : "
     And the output should contain "Enter a verb : "
     And the output should contain "Enter an adjective : "
     And the output should contain "Enter an adverb : "
     And the output should contain "Do you clean your dirty house quickly? That's hillarious!"
