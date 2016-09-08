package com.lochnesh.exercises.simplemath

import scala.language.implicitConversions

class Computations {

  def add(firstNumber: BigDecimal, secondNumber: BigDecimal): BigDecimal = firstNumber + secondNumber
  def subtract(firstNumber: BigDecimal, secondNumber: BigDecimal): BigDecimal = firstNumber - secondNumber
  def multiply(firstNumber: BigDecimal, secondNumber: BigDecimal): BigDecimal = firstNumber * secondNumber
  def divide(firstNumber: BigDecimal, secondNumber: BigDecimal):BigDecimal = firstNumber / secondNumber

}

object ComputationImplicits {
  implicit class ComputationConverter[T](x: T)(implicit n: Numeric[T]) {

    def plus(s: BigDecimal): BigDecimal = convert(x,n) + s

    def minus(s: BigDecimal): BigDecimal = convert(x,n) - s

    def times(s: BigDecimal): BigDecimal = convert(x,n) * s

    def divide(s: BigDecimal): BigDecimal = convert(x,n) / s

    private def convert(x:T, n: Numeric[T]) = BigDecimal(n.toDouble(x))

  }
}
