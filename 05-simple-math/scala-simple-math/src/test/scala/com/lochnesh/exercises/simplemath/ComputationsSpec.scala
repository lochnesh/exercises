package com.lochnesh.exercises.simplemath

import org.scalatest.{Matchers, FlatSpec}
import com.lochnesh.exercises.simplemath.ComputationImplicits._

class ComputationsSpec extends FlatSpec with Matchers {

  // scalastyle:off magic.number
  "Addition" should "return numbers added together" in {
    1 plus 2 should be (3)
    2 plus 3 should be (5)
    1.2 plus .2 should be (1.4)
  }

  "Subtraction" should "return number1 minus number2" in {
    2 minus 1 should be(1)
    5 minus 1 should be (4)
    1.1 minus .9 should be (.2)
  }

  "Multiplication" should "return number1 times number2" in {
    2 times 3 should be (6)
    2 times 7 should be (14)
    1.1 times .2 should be (.22)
  }

  "Division" should "return number1 divided by number2" in {
    8 divide 2 should be (4)
    12 divide 4 should be (3)
    1.5 divide .2 should be (7.5)
  }
  // scalastyle:on magic.number

}
