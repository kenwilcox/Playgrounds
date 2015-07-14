//: High Order Functions - just playing around with Map, Filter, Reduce, etc.

import UIKit

var str = "Hello, playground"

// simple way to calculate averages
func square(a: Float) -> Float {
  return a * a
}

func cube(a: Float) -> Float {
  return a * a * a
}

func averageSumOfSquares(a: Float, b: Float) -> Float {
  return (square(a) + square(b)) / 2.0
}

func averageSumOfCubes(a: Float, b: Float) -> Float {
  return (cube(a) + cube(b)) / 2.0
}

averageSumOfSquares(5.0, b: 18.2)
averageSumOfCubes(5.75, b: 96.32589768)


// more complex example
func averageOfFunction(a: Float, _ b: Float, _ f: (Float -> Float)) -> Float {
  return (f(a) + f(b)) / 2
}

averageOfFunction(5.0, 18.2, square)
averageOfFunction(5.75, 96.32589768, cube)

// or define the function inline (closure expression)
var ret = averageOfFunction(5.0, 18.2, {(x: Float) -> Float in return x * x})
print(ret)

// but, we don't need to specify types - looks kinda like python
ret = averageOfFunction(5.0, 18.2, {x in return x * x})
print(ret)

// heck, we don't even need the return statement
ret = averageOfFunction(5.0, 18.2, {x in x * x})
print(ret)

// even more lazy - don't even need to specify varible names
// the $n is the argument position
ret = averageOfFunction(5.0, 18.2, {$0 * $0})
print(ret)

