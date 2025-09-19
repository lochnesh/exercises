name := "simple-math"

version := "1.1.0"

scalaVersion := "2.13.12"

libraryDependencies ++= Seq(
  "org.typelevel" %% "cats-effect" % "3.5.4",
  "org.scalatest" %% "scalatest" % "3.2.18" % Test
)
