//: Chain of Responsibility - The chain of responsibility pattern is used to process varied requests, each of which may be dealt with by a different handler.

class MoneyPile {
  let value: Int
  let quantity: Int
  var nextPile: MoneyPile?
  
  init(value: Int, quantity: Int, nextPile: MoneyPile?) {
    self.value = value
    self.quantity = quantity
    self.nextPile = nextPile
  }
  
  func canWithdraw(var v: Int) -> Bool {
    func canTakeSomeBill(want: Int) -> Bool {
      return (want / self.value) > 0
    }
    
    var q = self.quantity
    while canTakeSomeBill(v) {
      if q == 0 {
        break
      }
      v -= self.value
      q -= 1
    }
    
    if v == 0 {
      return true
    } else if let next = self.nextPile {
      return next.canWithdraw(v)
    }
    
    return false
  }
}

class ATM {
  private var hundred: MoneyPile
  private var fifty: MoneyPile
  private var twenty: MoneyPile
  private var ten: MoneyPile
  private var five: MoneyPile
  private var one: MoneyPile
  
  private var startPile: MoneyPile {
    return self.hundred
  }
  
  init(hundred: MoneyPile, fifty: MoneyPile, twenty: MoneyPile, ten: MoneyPile, five: MoneyPile, one: MoneyPile) {
    self.hundred = hundred
    self.fifty = fifty
    self.twenty = twenty
    self.ten = ten
    self.five = five
    self.one = one
  }
  
  func canWithdraw(value: Int) -> String {
    return "Can withdraw: \(self.startPile.canWithdraw(value))"
  }
}

// Create piles of money and link them together
let one = MoneyPile(value: 1, quantity: 8, nextPile: nil)
let five = MoneyPile(value: 5, quantity: 9, nextPile: one)
let ten = MoneyPile(value: 10, quantity: 6, nextPile: five)
let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)

// Build ATM
var atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten, five: five, one: one)
atm.canWithdraw(310)
atm.canWithdraw(100)
atm.canWithdraw(165)
atm.canWithdraw(30)
atm.canWithdraw(450)

