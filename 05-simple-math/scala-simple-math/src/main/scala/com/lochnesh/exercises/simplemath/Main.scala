package com.lochnesh.exercises.simplemath

import com.lochnesh.exercises.simplemath.ComputationImplicits._
import scala.io.StdIn._
import cats.effect.IO

object Main extends App {

  def read(prompt: String) = IO { BigDecimal(readLine(prompt)) }
  def print(output: String) = IO { println(output) }

  val program = for {
    x <- read("What is the first number? ")
    y <- read("What is the second number? ")
    _ <- print(s"$x + $y = ${x plus y}")
    _ <- print(s"$x - $y = ${x minus y}")
    _ <- print(s"$x * $y = ${x times y}")
    _ <- print(s"$x / $y = ${x divide y}")
  } yield ()

  program.unsafeRunSync()
}
