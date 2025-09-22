package com.lochnesh.exercises.simplemath

import java.io.{ByteArrayInputStream, ByteArrayOutputStream}

import com.lochnesh.exercises.simplemath.ComputationImplicits._
import org.scalatest.flatspec.AnyFlatSpec
import org.scalatest.matchers.should.Matchers

class MainSpec extends AnyFlatSpec with Matchers {

  def capture(inputs: Any*)(func: () ⇒ Unit): Seq[String] = {
    val outputStream = new ByteArrayOutputStream()
    Console.withIn(new ByteArrayInputStream(inputs.mkString("\n").getBytes()))(
      Console.withOut(outputStream)(func())
    )
    outputStream.toString().split("\n").toSeq
  }

  "Run" should "read two inputs and print some computations" in {

    val firstNumber = 10
    val secondNumber = 5

    capture(firstNumber, secondNumber){() ⇒ Main.main(Array())} should contain inOrderOnly(
      s"What is the first number? What is the second number? $firstNumber + $secondNumber = ${firstNumber plus secondNumber}",
      s"$firstNumber - $secondNumber = ${firstNumber minus secondNumber}",
      s"$firstNumber * $secondNumber = ${firstNumber times secondNumber}",
      s"$firstNumber / $secondNumber = ${firstNumber divide secondNumber}")
  }
}
