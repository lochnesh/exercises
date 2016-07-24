package com.lochnesh.exercises.simplemath

class Inputs {

  lazy val read: (String) ⇒ String = (x) ⇒ readLine(x)

  def getNumbers = {
    val firstNumber = BigDecimal(read("What is the first number? "))
    val secondNumber = BigDecimal(read("What is the second number? "))
    (firstNumber, secondNumber)
  }

}
