// let is constant
let tutorialTeam = 56
let editorialTeam = 23

// var is a variable
var totalTeam = tutorialTeam + editorialTeam
totalTeam += 1

let priceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Whoppie Cushion"
let nameExplicit: String = "Whoppie Cushion"

if onSaleInferred {
  println("\(nameInferred) on sale for \(priceInferred)!")
} else {
  println("\(nameInferred) at regular price: \(priceInferred)!")
}

// Done with variables - lets play with classes!