package com.lochnesh.exercises.simplemath

import com.lochnesh.exercises.simplemath.ComputationImplicits._
import org.scalatest.flatspec.AnyFlatSpec
import org.scalatest.matchers.should.Matchers

class ComputationsSpec extends AnyFlatSpec with Matchers {

  // scalastyle:off magic.number
  "Addition" should "return numbers added together" in {
    1 plus 2 shouldBe BigDecimal(3)
    2 plus 3 shouldBe BigDecimal(5)
    1.2 plus .2 shouldBe BigDecimal("1.4")
  }

  "Subtraction" should "return number1 minus number2" in {
    2 minus 1 shouldBe BigDecimal(1)
    5 minus 1 shouldBe BigDecimal(4)
    1.1 minus .9 shouldBe BigDecimal("0.2")
  }

  "Multiplication" should "return number1 times number2" in {
    2 times 3 shouldBe BigDecimal(6)
    2 times 7 shouldBe BigDecimal(14)
    1.1 times .2 shouldBe BigDecimal("0.22")
  }

  "Division" should "return number1 divided by number2" in {
    8 divide 2 shouldBe BigDecimal(4)
    12 divide 4 shouldBe BigDecimal(3)
    1.5 divide .2 shouldBe BigDecimal("7.5")
  }
  // scalastyle:on magic.number

}
