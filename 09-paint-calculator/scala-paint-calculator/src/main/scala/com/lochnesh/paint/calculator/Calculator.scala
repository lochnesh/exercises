package com.lochnesh.paint.calculator

object Calculator {
  val squareFeetPerGallon = 350

  def gallons(length: Double, width: Double): Int =
    Math.ceil((length * width) / squareFeetPerGallon).toInt
}
