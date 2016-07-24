package com.lochnesh.exercises.simplemath

import org.scalatest.{Matchers, FlatSpec}

class InputsSpec extends FlatSpec with Matchers {

  "Inputs" should "read input" in {
    val inputs = new Inputs {
      override lazy val read = (x: String) ⇒ {
        x match {
          case "What is the first number? " ⇒ "1"
          case "What is the second number? " ⇒ "2"
        }
      }
    }
    inputs.getNumbers should be (1,2)
  }
}
