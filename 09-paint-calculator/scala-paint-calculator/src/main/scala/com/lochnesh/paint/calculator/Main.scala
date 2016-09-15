package com.lochnesh.paint.calculator

object Main extends App {

  val input = (prompt: String) ⇒ scala.io.StdIn.readLine(prompt)
  PaintCalculator.run(input, println)

}

object PaintCalculator {
  def run(input: (String) ⇒ String, output: (String) ⇒ Unit): Unit = {
    val length = input("What is the length of the ceiling? ").toDouble
    val width = input("What is the width of the ceiling? ").toDouble

    val gallons = Calculator.gallons(length, width)
    output(s"You will need $gallons gallon${if (gallons > 1) "s" else ""} of paint to cover ${length * width} square feet.")
  }
}

