package com.lochnesh.exercises.simplemath

import com.lochnesh.exercises.simplemath.ComputationImplicits._
import scala.io.StdIn._

object Main extends App {
  new SimpleMath().run()
}

class SimpleMath(reader: (String) ⇒ String = readLine(_), writer: (String) ⇒ Unit = println(_)) {
  def run(): Unit = {
    val firstNumber = BigDecimal(reader("What is the first number? "))
    val secondNumber = BigDecimal(reader("What is the second number? "))

    writer(s"$firstNumber + $secondNumber = ${firstNumber plus secondNumber}")
    writer(s"$firstNumber - $secondNumber = ${firstNumber minus secondNumber}")
    writer(s"$firstNumber * $secondNumber = ${firstNumber times secondNumber}")
    writer(s"$firstNumber / $secondNumber = ${firstNumber divide secondNumber}")
  }
}
