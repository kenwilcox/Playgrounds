// Playground - noun: a place where people can play
import Foundation // for NSString below

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
// Why would I use append over +=?
dogString.append(char)
dogString += "🐶"

countElements(dogString)

x = 5
let newString = "\(x)"
let floatValue = 3.5
let newFloatString = "\(floatValue)"


let numberString = "9"
var numberStringToInt = numberString.toInt()!

let anotherNumberString = "9.9"
// Weird, add a ! to the folowing line and you get a crash in the
// for codeUnit in dogString.utf8 above
// uses a regex
let anotherNumberStringToInt = anotherNumberString.toInt()

let doubleString = "3.9585"
// um.. why not add a .toDouble() and use a regex like above?
var doubleValue = Double((doubleString as NSString).doubleValue)
doubleValue += 1.1

let string = NSString(string: doubleString)
var anotherDoubleValue = string.doubleValue
anotherDoubleValue += 1.1

// With a String extension... http://stackoverflow.com/a/24102778
extension String {
  func toDouble() -> Double
  {
    let minusAscii: UInt8 = 45
    let dotAscii: UInt8 = 46
    let zeroAscii: UInt8 = 48
    
    var res = 0.0
    let ascii = self.utf8
    
    var whole = [Double]()
    var current = ascii.startIndex
    
    let negative = current != ascii.endIndex && ascii[current] == minusAscii
    if (negative)
    {
      current = current.successor()
    }
    
    while current != ascii.endIndex && ascii[current] != dotAscii
    {
      whole.append(Double(ascii[current] - zeroAscii))
      current = current.successor()
    }
    
    //whole number
    var factor: Double = 1
    for var i = countElements(whole) - 1; i >= 0; i--
    {
      res += Double(whole[i]) * factor
      factor *= 10
    }
    
    //mantissa
    if current != ascii.endIndex
    {
      factor = 0.1
      current = current.successor()
      while current != ascii.endIndex
      {
        res += Double(ascii[current] - zeroAscii) * factor
        factor *= 0.1
        current = current.successor()
      }
    }
    
    if (negative)
    {
      res *= -1;
    }
    
    return res
  }
}

var newDoubleValue = "3.49".toDouble()
var anotherDouble = "-0.299999".toDouble()
var wholeNumber = "1".toDouble()
