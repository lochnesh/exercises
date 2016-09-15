package com.lochnesh.paint.calculator

import org.scalatest.{Matchers, FlatSpec}

class CalculatorSpec extends FlatSpec with Matchers {

  // scalastyle:off magic.number
  it should "calculate number of gallons needed for a surface" in {
    Calculator.gallons(10, 5) should be (1)
    Calculator.gallons(70, 5) should be (1)
    Calculator.gallons(20, 18) should be (2)
  }
  // scalastyle:on magic.number
}
