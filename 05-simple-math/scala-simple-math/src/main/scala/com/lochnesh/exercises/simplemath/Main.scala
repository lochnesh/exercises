package com.lochnesh.exercises.simplemath

import com.lochnesh.exercises.simplemath.ComputationImplicits._
import scala.io.StdIn._

object Main extends App {
  new SimpleMath().run()
}

class SimpleMath() {
  def run(): Unit = {
    val firstNumber = BigDecimal(readLine("What is the first number? "))
    val secondNumber = BigDecimal(readLine("What is the second number? "))

    println(s"$firstNumber + $secondNumber = ${firstNumber plus secondNumber}")
    println(s"$firstNumber - $secondNumber = ${firstNumber minus secondNumber}")
    println(s"$firstNumber * $secondNumber = ${firstNumber times secondNumber}")
    println(s"$firstNumber / $secondNumber = ${firstNumber divide secondNumber}")
  }
}
