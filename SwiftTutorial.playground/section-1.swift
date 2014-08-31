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
  
//  func printPossibleTips() {
//    //println("15%: \(calcTipWithTipPct(0.15))")
//    //println("18%: \(calcTipWithTipPct(0.18))")
//    //println("20%: \(calcTipWithTipPct(0.20))")
//    
//    let possibleTipsInferred = [0.15, 0.18, 0.20]
//    //let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
//    //for possibleTip in possibleTipsInferred {
//    //  println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
//    //}
//    // Or you can do loops like this
//    for i in 0..<possibleTipsInferred.count {
//      let possibleTip = possibleTipsInferred[i]
//      println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
//    }
//  }
  
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
