package com.lochnesh.paint.calculator

import org.scalatest.flatspec.AnyFlatSpec
import org.scalatest.matchers.should.Matchers

class CalculatorSpec extends AnyFlatSpec with Matchers {

  // scalastyle:off magic.number
  it should "calculate number of gallons needed for a surface" in {
    Calculator.gallons(10, 5) shouldBe 1
    Calculator.gallons(70, 5) shouldBe 1
    Calculator.gallons(20, 18) shouldBe 2
  }
  // scalastyle:on magic.number
}
