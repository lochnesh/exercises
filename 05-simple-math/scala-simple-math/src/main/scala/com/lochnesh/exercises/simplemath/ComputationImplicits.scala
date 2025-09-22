package com.lochnesh.exercises.simplemath

object ComputationImplicits {
  implicit class ComputationConverter[T](private val value: T)(implicit n: Numeric[T]) {

    def plus(other: BigDecimal): BigDecimal = convert(value) + other

    def minus(other: BigDecimal): BigDecimal = convert(value) - other

    def times(other: BigDecimal): BigDecimal = convert(value) * other

    def divide(other: BigDecimal): BigDecimal = convert(value) / other

    private def convert(x: T): BigDecimal = x match {
      case bd: BigDecimal ⇒ bd
      case bi: BigInt     ⇒ BigDecimal(bi)
      case l: Long        ⇒ BigDecimal(l)
      case i: Int         ⇒ BigDecimal(i)
      case s: Short       ⇒ BigDecimal(s.toInt)
      case b: Byte        ⇒ BigDecimal(b.toInt)
      case f: Float       ⇒ BigDecimal.decimal(f.toDouble)
      case d: Double      ⇒ BigDecimal.decimal(d)
      case other          ⇒ BigDecimal(other.toString)
    }

  }
}
