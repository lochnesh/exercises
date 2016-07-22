package io.github.lochnesh

import scala.io.StdIn._

object Main extends App {

  val firstNumber = Integer.parseInt(readLine("What is the first number? "))
  val secondNumber = Integer.parseInt(readLine("What is the second number? "))

  val computations = new Computations
  println(s"$firstNumber + $secondNumber = ${computations.add(firstNumber, secondNumber)}")
  println(s"$firstNumber - $secondNumber = ${computations.subtract(firstNumber, secondNumber)}")
  println(s"$firstNumber * $secondNumber = ${computations.multiply(firstNumber, secondNumber)}")
  println(s"$firstNumber / $secondNumber = ${computations.divide(firstNumber, secondNumber)}")

}
