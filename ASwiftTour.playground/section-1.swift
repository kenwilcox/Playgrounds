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


// Functions and Closures
func greet(name: String, day: String) -> String {
  return "Hello \(name), today is \(day)."
}
greet("Bob", "Tuesday")

func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  
  return (min, max, sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
statistics.sum
statistics.2

// - variable number of arguments
func sumOf(numbers: Int...) -> Int {
  return sumOf(numbers)
}

func sumOf(numbers:[Int]) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}
sumOf()
sumOf(42,597,12)

// Ok, it's dumb that you can't pass a variadic param 
// to a function that takes variadic params
func averageOf(numbers: Int...) -> Int {
  return sumOf(numbers) / numbers.count
}

averageOf(42,597,12)

// - nested functions
func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}
returnFifteen()

// Hey, like JavaScript
func makeIncrementer() -> (Int -> Int) {
  func addOne(number:Int) -> Int {
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)


func hasAnyMatches(list:[Int], condition: Int->Bool)->Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}

func lessThanTen(number:Int) -> Bool {
  return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
  (number:Int) -> Int in
  let result = 3 * number
  return result
})

numbers.map({
  (number:Int) -> Int in
  var ret = number
  if (number % 2 != 0) {
    ret = 0
  }
  return ret
})

let mappedNumbers = numbers.map({ number in 3 * number})
mappedNumbers

let sortedNumbersDec = sorted(numbers) {$0 > $1}
sortedNumbersDec

let sortedNumbersAsc = sorted(numbers) {$0 < $1}
sortedNumbersAsc
