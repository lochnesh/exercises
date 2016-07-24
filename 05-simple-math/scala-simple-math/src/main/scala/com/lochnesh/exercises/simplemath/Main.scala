package com.lochnesh.exercises.simplemath

import scala.io.StdIn._

object Main extends App {
  new SimpleMath().run()
}

class SimpleMath(reader: (String) ⇒ String = readLine(_), writer: (String) ⇒ Unit = println(_)) {
  def run(): Unit = {
    val firstNumber = BigDecimal(reader("What is the first number? "))
    val secondNumber = BigDecimal(reader("What is the second number? "))

    val computations = new Computations
    writer(s"$firstNumber + $secondNumber = ${computations.add(firstNumber, secondNumber)}")
    writer(s"$firstNumber - $secondNumber = ${computations.subtract(firstNumber, secondNumber)}")
    writer(s"$firstNumber * $secondNumber = ${computations.multiply(firstNumber, secondNumber)}")
    writer(s"$firstNumber / $secondNumber = ${computations.divide(firstNumber, secondNumber)}")
  }
}
