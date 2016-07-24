package com.lochnesh.exercises.simplemath

object Main extends App {

  val numbers = new Inputs().getNumbers
  val firstNumber = numbers._1
  val secondNumber = numbers._2
  val computations = new Computations
  println(s"$firstNumber + $secondNumber = ${computations.add(firstNumber, secondNumber)}")
  println(s"$firstNumber - $secondNumber = ${computations.subtract(firstNumber, secondNumber)}")
  println(s"$firstNumber * $secondNumber = ${computations.multiply(firstNumber, secondNumber)}")
  println(s"$firstNumber / $secondNumber = ${computations.divide(firstNumber, secondNumber)}")

}
