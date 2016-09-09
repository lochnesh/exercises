package com.lochnesh.paint.calculator

import org.scalatest.{Matchers, FlatSpec}

class MainSpec extends FlatSpec with Matchers {

  it should "prompt user for length and width and print number of gallons" in {

    PaintCalculator.run()
  }

}
