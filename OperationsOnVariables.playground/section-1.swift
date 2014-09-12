// Playground - noun: a place where people can play

// typealias - interesting... why?
typealias WholeNumber = Int
typealias NumberWithDecimal = Double

var x:WholeNumber = 45
var y = 10

let additionAnswer = x + y
let multiplicationAnswer = x * y
let subtractionAnswer = x - y
let divisionAnswer = x / y

let divisionFloatAnswer = Float(x) / Float(y)

let discountOnShoesAtStore = 0.3
let priceOfShoes:NumberWithDecimal = 33

var priceAfterDiscount = priceOfShoes * (1 - discountOnShoesAtStore)
let downPayment = 10.5
priceAfterDiscount = priceAfterDiscount - downPayment

var z = 33
z = 44

// Whoo hoo!
var 😄 = 99
var 😢 = 😄 + z

var largeNumber = 1_000_000_000_000

// Strings
var string1 = "Hello"
var string2 = "World"
var helloWorldString = string1 + " " + string2
countElements(helloWorldString)

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
  println("These two strings are considered equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
  // Ugh...
  println("These two characters are not equivalent")
}

var dogString = "Dog‼🐶"
countElements(dogString)
var count = 0
for codeUnit in dogString.utf8 {
  count++
}
println(count)

count = 0
for scalar in dogString.unicodeScalars {
  count++
}
println(count)
// So it looks like countElements calls unicodeScalars on strings?

let char:Character = "🐶"
dogString.append(char)
