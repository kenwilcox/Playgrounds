println("Hello, world!")

// Simple Values
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
shoppingList = []
occupations = [:]