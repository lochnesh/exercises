Feature: 09 Paint Calculator
 Scenario: Scala
     When I run `java -jar ../../09-paint-calculator/scala-paint-calculator/target/scala-2.11/paint-calculator-assembly-1.0.0.jar` interactively
     And I type "20"
     And I type "30"
     Then the output should contain "What is the length of the ceiling? "
     And the output should contain "What is the width of the ceiling? "
     And the output should contain "You will need 2 gallons of paint to cover 600.0 square feet."
