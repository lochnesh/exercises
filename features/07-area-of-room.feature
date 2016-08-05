Feature: 07 Area of room
 Scenario: Elixir
     When I run `./07-area-of-room/elixir_area_of_room/elixir_area_of_room` interactively
     And I type "24.0"
     And I type "15.0"
     Then the output should contain "What is the length of the room in feet? "
     And the output should contain "What is the width of the room in feet? "
     And the output should contain "You entered the dimensions of 24.0 feet by 15.0 feet."
     And the output should contain "The area is"
     And the output should contain "360.0 square feet"
     And the output should contain "33.445 square meters"
