package com.lochnesh.exercises.simplemath

import org.scalatest.{Matchers, FlatSpec}
import com.lochnesh.exercises.simplemath.ComputationImplicits._

class ComputationsSpec extends FlatSpec with Matchers {

  private def fixture = {
    new {
      val computations = new Computations
    }
  }

  // scalastyle:off magic.number
  "Addition" should "return numbers added together" in {
    fixture.computations.add(1, 2) should be (3)
    fixture.computations.add(2, 3) should be (5)
    fixture.computations.add(1.1, .2) should be (1.3)
    1 plus 2 should be (3)
    2 plus 3 should be (5)
    1.2 plus .2 should be (1.4)
  }

  "Subtraction" should "return number1 minus number2" in {
    fixture.computations.subtract(2, 1) should be (1)
    fixture.computations.subtract(5, 1) should be (4)
    fixture.computations.subtract(1.1, .9) should be (.2)
    2 minus 1 should be(1)
    5 minus 1 should be (4)
    1.1 minus .9 should be (.2)
  }

  "Multiplication" should "return number1 times number2" in {
    fixture.computations.multiply(2, 3) should be (6)
    fixture.computations.multiply(2, 7) should be (14)
    fixture.computations.multiply(1.1, .2) should be (.22)
    2 times 3 should be (6)
    2 times 7 should be (14)
    1.1 times .2 should be (.22)
  }

  "Division" should "return number1 divided by number2" in {
    fixture.computations.divide(8, 2) should be (4)
    fixture.computations.divide(12, 4) should be (3)
    fixture.computations.divide(1.5, .2) should be (7.5)
    8 divide 2 should be (4)
    12 divide 4 should be (3)
    1.5 divide .2 should be (7.5)
  }
  // scalastyle:on magic.number

}
