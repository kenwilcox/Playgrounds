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



// Map

// The ugly way
var moneyArray = [10, 20, 45, 32]
var stringsArray: [String] = []
for money in moneyArray {
  stringsArray.append("$\(money)")
}
print(stringsArray)

// the map way
var mapStrings = moneyArray.map({money in "¥\(money)"})
print(mapStrings)



// Filter
// the ugly way
var filteredArray: [Int] = []
for money in moneyArray {
  if (money > 30) {
    filteredArray += [money]
  }
}
print(filteredArray)

// the filtered way
var filteredMoney = moneyArray.filter({$0 > 30})
print(filteredMoney)



// Reduce
// the ugly way
var sum = 0
for money in moneyArray {
  sum += money
}
print(sum)

var product = 1
for money in moneyArray {
  product *= money
}
print(product)

// the reduce way
sum = moneyArray.reduce(0, combine: {$0 + $1})
print(sum)

// or
sum = moneyArray.reduce(0, combine: +)
print(sum)




// Challenges
// Write a function applyTwice(f:(Float -> Float),x:Float) -> Float that takes a function f and a float x and aplies f to x twice i.e. f(f(x))
func applyTwice(f:(Float -> Float), x:Float) -> Float {
  return f(f(x))
}

var twice = applyTwice({x in x * x}, x: 5)
print(twice)

// Write a function applyKTimes(f:(Float -> Float),x:Float,k:Int) -> Float that takes a function f and a float x and aplies f to x k times
// Using applyKTimes write a function that raises x to the kth power
func applyKTimes(f:(Float -> Float), x:Float, k:Int) -> Float {
  var result: Float = 1.0
  for _ in 0..<k {
    result = result * f(x)
  }
  return result
}

var ktimes = applyKTimes({x in x}, x: 5.0, k: 4)
print("ktimes = \(ktimes)")


// Just playing around
var evenSum = Array(1...10)
  .filter { (number) in number % 2 == 0 }
  .reduce(0) { (total, number) in total + number }

print(evenSum)

print (4*4 + 4*4 + 4*4 + 4*4 + 4*4)
print (5 * 5 * 5 * 5)



// Given an array of Users which have properties name:String and age:Int write a map function that returns an array of strings consisting of the user’s names

struct User {
  var name = "Unknown"
  var age = 0
}

let users = [User(name: "John", age:10), User(name:"Doe", age: 14)]
var names = users.map{$0.name}
print(names)


// Given an array of of dictionaries containing keys for “name” and “age” write a map function that returns an array of users created from it
print("\nGiven an array of of dictionaries containing keys for “name” and “age” write a map function that returns an array of users created from it\n")
var data = [["name":"John", "age":10], ["name":"Doe", "age":14], ["name":"Young", "age":12]]
print(data)
var usersFromData = data.map{User(name: $0["name"] as! String, age: $0["age"] as! Int)}
print(usersFromData)
print("or pretty printed")
var prettyUsers = usersFromData.map({user in "\(user.name): \(user.age)"})
print(prettyUsers)
