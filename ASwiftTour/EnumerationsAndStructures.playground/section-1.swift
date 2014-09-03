// Enumerations and Structures

// enums - sounds like C# enums - can have methods
enum Rank: Int {
  case Ace = 1
  case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
  case Jack, Queen, King
  
  func simpleDescription() -> String {
    switch self {
    case .Ace:
      return "ace"
    case .Jack:
      return "jack"
    case .Queen:
      return "queen"
    case .King:
      return "king"
    default:
      return String(self.toRaw())
    }
  }
  
  func compare(comp: Rank) -> Bool {
    return comp.toRaw() == self.toRaw()
  }
}
let ace = Rank.Ace
ace.simpleDescription()
let aceRawValue = ace.toRaw()

let king = Rank.King
king.compare(ace)

if let convertedRank = Rank.fromRaw(3) {
  let threeDescription = convertedRank.simpleDescription()
}

enum Suit:Int {
  case Spades, Hearts, Diamonds, Clubs
  func simpleDescription() -> String {
    switch self {
    case .Spades:
      return "spades"
    case .Hearts:
      return "hearts"
    case .Diamonds:
      return "diamonds"
    case .Clubs:
      return "clubs"
    }
  }
  func color() -> String {
    switch self {
    case .Spades, .Clubs:
      return "black"
    case .Hearts, .Diamonds:
      return "red"
    }
  }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

struct Card {
  var rank: Rank
  var suit: Suit
  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
  
  static func fullDeck() -> [Card] {
    var deck:[Card] = []
    let ranksPerSuit = 13
    
    for index in 0..<52
    {
      let suit = Suit.fromRaw(index / ranksPerSuit)
      let rank = Rank.fromRaw(index % ranksPerSuit + 1)
      deck.append(Card(rank: rank!, suit: suit!))
    }
    return deck
  }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOFSpadesDescription = threeOfSpades.simpleDescription()

let deck = Card.fullDeck()
for card: Card in deck {
  println(card.simpleDescription())
}

enum ServerResponse {
  case Result(String, String)
  case Error(String)
  case Something(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")
let something = ServerResponse.Something("Something")

switch success {
case let .Result(sunrise, sunset):
  let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
  let serverResponse = "Failure... \(error)"
case let .Something(something):
  let serverResonse = "Something = \(something)"
}
