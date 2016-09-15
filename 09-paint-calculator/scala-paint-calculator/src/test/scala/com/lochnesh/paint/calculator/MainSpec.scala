package com.lochnesh.paint.calculator

import org.scalatest.{AsyncFlatSpec, Matchers}

import scala.concurrent.Promise

class MainSpec extends AsyncFlatSpec with Matchers {

  it should "prompt user for length and width and print number of gallons" in {
    val (result, func) = output()

    PaintCalculator.run(inputs("12", "10"), func)

    result.future map { _ should be ("You will need 1 gallon of paint to cover 120.0 square feet.") }
  }

  it should "pluralize response" in {
    val (result, func) = output()

    PaintCalculator.run(inputs("20", "30"), func)

    result.future map { _ should be ("You will need 2 gallons of paint to cover 600.0 square feet.") }
  }

  private def inputs(length: String, width: String) = {
    (p: String) ⇒ {
      p match {
        case "What is the length of the ceiling? " ⇒ length
        case "What is the width of the ceiling? " ⇒ width
      }
    }
  }

  private def output() = {
    val data = Promise[String]()
    val output: (String) ⇒ Unit = (t: String) ⇒ {
      data.success(t)
    }
    (data, output)
  }
}
