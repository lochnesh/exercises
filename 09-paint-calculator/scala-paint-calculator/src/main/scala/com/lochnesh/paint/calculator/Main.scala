package com.lochnesh.paint.calculator

object Main extends App {

  val input = (prompt: String) ⇒ scala.io.StdIn.readLine(prompt)
  PaintCalculator.run(input)

}

object PaintCalculator {
  def run(input: (String) ⇒ String): Unit = {
    val length = input("What is the length of the ceiling? ").toDouble
    val width = input("What is the width of the ceiling? ").toDouble

  }
}

