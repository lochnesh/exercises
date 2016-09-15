package com.lochnesh.paint.calculator

import org.scalatest.{Matchers, FlatSpec}

class MainSpec extends FlatSpec with Matchers {

  it should "prompt user for length and width and print number of gallons" in {

    var data = Seq[String]()
    val output: (String) ⇒ Unit = (t: String) ⇒ {
      data = data :+ t
    }

    PaintCalculator.run(inputs("12", "10"), output)

    data.head should be ("You will need 1 gallon of paint to cover 120.0 square feet.")
  }

  it should "pluralize response" in {

    var data = Seq[String]()
    val output: (String) ⇒ Unit = (t: String) ⇒ {
      data = data :+ t
    }

    PaintCalculator.run(inputs("20", "30"), output)

    data.head should be ("You will need 2 gallons of paint to cover 600.0 square feet.")
  }

  private def inputs(length: String, width: String) = {
    (p: String) ⇒ {
      p match {
        case "What is the length of the ceiling? " ⇒ length
        case "What is the width of the ceiling? " ⇒ width
      }
    }
  }

}
