package com.lochnesh.paint.calculator

import org.scalatest.{Matchers, FlatSpec}

class MainSpec extends FlatSpec with Matchers {

  it should "prompt user for length and width and print number of gallons" in {
    val inputs = (p: String) ⇒ {
      p match {
        case "What is the length of the ceiling? " ⇒ "12"
        case "What is the width of the ceiling? " ⇒ "10"
      }
    }

    PaintCalculator.run(inputs)
  }

}
