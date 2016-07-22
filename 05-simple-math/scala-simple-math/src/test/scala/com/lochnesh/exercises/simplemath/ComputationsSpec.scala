package com.lochnesh.exercises.simplemath

import org.scalatest.{Matchers, FlatSpec}

class ComputationsSpec extends FlatSpec with Matchers {

  def fixture = {
    new {
      val computations = new Computations
    }
  }

  "Addition" should "return numbers added together" in {
    fixture.computations.add(1, 2) should be (3)
    fixture.computations.add(2, 3) should be (5)
  }

  "Subtraction" should "return number1 minus number2" in {
    fixture.computations.subtract(2, 1) should be (1)
    fixture.computations.subtract(5, 1) should be (4)
  }

  "Multiplication" should "return number1 times number2" in {
    fixture.computations.multiply(2, 3) should be (6)
    fixture.computations.multiply(2, 7) should be (14)
  }

  "Division" should "return number1 divided by number2" in {
    fixture.computations.divide(8, 2) should be (4)
    fixture.computations.divide(12, 4) should be (3)
  }

}
