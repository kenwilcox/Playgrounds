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

class TipCalculator {
  let total: Double
  let taxPct: Double
  let subtotal: Double
  
  init(total: Double, taxPct: Double) {
    self.total = total
    self.taxPct = taxPct
    subtotal = total / (taxPct + 1)
  }
  
  func calcTipWithTipPct(tipPct: Double) -> Double {
    return subtotal * tipPct
  }
  
  func returnPossibleTips() -> [Int: Double] {
    let possibleTipsInferred = [0.15, 0.18, 0.20]
    //let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
    
    var retval = Dictionary<Int, Double>()
    for possibleTip in possibleTipsInferred {
      let intPct = Int(possibleTip * 100)
      retval[intPct] = calcTipWithTipPct(possibleTip)
    }
    return retval
  }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()

let tipAndTotal = (4.00, 25.19)
tipAndTotal.0
tipAndTotal.1
// That's ugly, how about by name
// just like python, cool
let(theTipAmount, theTotal) = tipAndTotal
theTipAmount
theTotal

// How About Named Tuples
let tipAndTotalNamed = (tipAmt: 4.00, total:25.19)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total

// By index still works too - weird.
tipAndTotalNamed.0
tipAndTotalNamed.1


