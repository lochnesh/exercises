package com.lochnesh.exercises.simplemath

import scala.io.StdIn._

object Main extends App {

  val firstNumber = BigDecimal(readLine("What is the first number? "))
  val secondNumber = BigDecimal(readLine("What is the second number? "))

  val computations = new Computations
  println(s"$firstNumber + $secondNumber = ${computations.add(firstNumber, secondNumber)}")
  println(s"$firstNumber - $secondNumber = ${computations.subtract(firstNumber, secondNumber)}")
  println(s"$firstNumber * $secondNumber = ${computations.multiply(firstNumber, secondNumber)}")
  println(s"$firstNumber / $secondNumber = ${computations.divide(firstNumber, secondNumber)}")

}
