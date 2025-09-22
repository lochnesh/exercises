Feature: 05 Simple math
 Scenario: Scala
     When I run `java -jar ../../05-simple-math/scala-simple-math/target/scala-2.13/simple-math-assembly-1.1.0.jar` interactively
     And I type "10"
     And I type "5"
     Then the output should contain "What is the first number? "
     And the output should contain "What is the second number? "
     And the output should contain:
         """
         10 + 5 = 15
         10 - 5 = 5
         10 * 5 = 50
         10 / 5 = 2
         """
