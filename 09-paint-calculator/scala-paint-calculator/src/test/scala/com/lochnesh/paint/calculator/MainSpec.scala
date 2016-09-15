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

    var data = Seq[String]()
    val output: (String) ⇒ Unit = (t: String) ⇒ {
      data = data :+ t
    }

    PaintCalculator.run(inputs, output)

    data.head should be ("You will need 1 gallons of paint to cover 120.0 square feet.")
  }

}
