package com.lochnesh.paint.calculator

import cats.effect.IO

object Main extends App {
  val input = (prompt: String) ⇒ scala.io.StdIn.readLine(prompt)
  PaintCalculator.run(input, println)
}

object PaintCalculator {
  def run(input: (String) ⇒ String, output: (String) ⇒ Unit): Unit = {
    val program = for {
      length ← IO { input("What is the length of the ceiling? ").toDouble }
      width ← IO { input("What is the width of the ceiling? ").toDouble }
      gallons = Calculator.gallons(length, width)
      _ ← IO { output(s"You will need $gallons gallon${if (gallons > 1) "s" else ""} of paint to cover ${length * width} square feet.") }
    } yield ()

    program.unsafeRunSync()
  }
}

