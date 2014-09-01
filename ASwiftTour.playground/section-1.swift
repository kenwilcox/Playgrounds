println("Hello, world!")

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let explicitConstFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let myName = "Jose Jones"
let debt = 14.76
let statement = "Hello, \(myName), you owe $\(debt)"

// Collections
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

// using Firefly references in documentation
// major points here!
var occupations = [
  "Malcom": "Captain",
  "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

// What would be the point of these? Constant empty?
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
//shoppingList = []
//occupations = [:]

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
teamScore

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
largest
largestKind

// - while
var n = 2
while n < 100 {
  n = n * 2
}
n

var m = 2
do {
 m = m * 2
} while m < 100
m

// - loops
var firstForLoop = 0
for i in 0..<4 {
  firstForLoop += 1
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 4; ++i {
  secondForLoop += 1
}
secondForLoop
