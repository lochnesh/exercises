package com.lochnesh.exercises.simplemath

import cats.effect.{IO, IOApp}
import com.lochnesh.exercises.simplemath.ComputationImplicits._

import scala.io.StdIn.readLine

object Main extends IOApp.Simple {

  private def read(prompt: String): IO[BigDecimal] =
    IO.blocking(BigDecimal(readLine(prompt)))

  private def write(output: String): IO[Unit] = IO.blocking(println(output))

  private val program: IO[Unit] = for {
    x ← read("What is the first number? ")
    y ← read("What is the second number? ")
    _ ← write(s"$x + $y = ${x plus y}")
    _ ← write(s"$x - $y = ${x minus y}")
    _ ← write(s"$x * $y = ${x times y}")
    _ ← write(s"$x / $y = ${x divide y}")
  } yield ()

  override def run: IO[Unit] = program
}
