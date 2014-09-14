// Control Flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
  if score > 50 {
    teamScore += 3
  } else {
    teamScore += 1
  }
}
println(teamScore)

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
optionalName = nil
var greeting = "Hello!"
if let name = optionalName {
  greeting = "Hello, \(name)"
} else {
  // interesting - name isn't set here...
  greeting = "Hello... and your name is?"
}

// - Switch - must contain every option (or default)
let vegetable = "red pepper"
switch vegetable {
case "celery":
  let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
  let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
  let vegetableComment = "Is it a spicy \(x)"
default:
  let vegetableComment = "Everything tastes good in soup."
}

// - for-in
let interestingNumbers = [
  "Prime":[2,3,5,7,11,13],
  "Fibonacci": [1,1,2,3,5,8],
  "Square": [1,4,9,16,25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest {
      largest = number
      largestKind = kind
    }
  }
}
println(largest)
println(largestKind)

// - while
var n = 2
while n < 100 {
  n = n * 2
}
println(n)

var m = 2
do {
  m = m * 2
} while m < 100
println(m)

// - loops
var firstForLoop = 0
for i in 0..<4 {
  firstForLoop += 1
}
println(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i {
  secondForLoop += 1
}
println(secondForLoop)

var mySpeed:Int = 50
if mySpeed & mySpeed < 70 {
  println("Cruze ON")
}
