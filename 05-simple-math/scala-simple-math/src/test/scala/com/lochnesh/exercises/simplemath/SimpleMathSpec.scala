package com.lochnesh.exercises.simplemath

import org.scalatest.{Matchers, FlatSpec}
import com.lochnesh.exercises.simplemath.ComputationImplicits._

class SimpleMathSpec extends FlatSpec with Matchers {

  "Run" should "read two inputs and print some computations" in {

    val firstNumber = 10
    val secondNumber = 5

    val reader = (x: String) ⇒ {
      x match {
        case "What is the first number? " ⇒ firstNumber.toString
        case "What is the second number? " ⇒ secondNumber.toString
      }
    }

    var outputs: Seq[String] = Seq[String]()
    val writer: (String) ⇒ Unit = (x: String) ⇒ {
      outputs = outputs :+ x
    }

    new SimpleMath(reader, writer).run()

    outputs should contain inOrderOnly(
      s"$firstNumber + $secondNumber = ${firstNumber plus secondNumber}",
      s"$firstNumber - $secondNumber = ${firstNumber minus secondNumber}",
      s"$firstNumber * $secondNumber = ${firstNumber times secondNumber}",
      s"$firstNumber / $secondNumber = ${firstNumber divide secondNumber}")
  }
}
