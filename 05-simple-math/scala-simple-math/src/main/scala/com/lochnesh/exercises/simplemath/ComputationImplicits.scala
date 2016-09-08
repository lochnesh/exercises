package com.lochnesh.exercises.simplemath

import scala.language.implicitConversions

object ComputationImplicits {
  implicit class ComputationConverter[T](x: T)(implicit n: Numeric[T]) {

    def plus(s: BigDecimal): BigDecimal = convert(x,n) + s

    def minus(s: BigDecimal): BigDecimal = convert(x,n) - s

    def times(s: BigDecimal): BigDecimal = convert(x,n) * s

    def divide(s: BigDecimal): BigDecimal = convert(x,n) / s

    private def convert(x:T, n: Numeric[T]) = BigDecimal(n.toDouble(x))

  }
}
