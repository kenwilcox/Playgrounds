// Protocols and Extensions

protocol ExampleProtocol {
  var simpleDescription: String {get}
  mutating func adjust()
}

// Class using Protocol
class SimpleClass: ExampleProtocol {
  var simpleDescription: String = "A very simple class."
  var anotherProperty: Int = 69105
  func adjust () {
    simpleDescription += " Now 100% adjusted."
  }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


// Structure using Protocol
struct SimpleStructure: ExampleProtocol {
  var simpleDescription: String = "A simple structure"
  // need mutating because it can modify the structure
  mutating func adjust() {
    simpleDescription += " (adjusted)"
  }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


// Enumeration using Protocol
enum SimpleEnumeration: ExampleProtocol {
  case Base, Adjusted
  
  var simpleDescription: String {
    get {
      return self.getDescription()
    }
  }
  
  func getDescription() -> String {
    switch self {
    case .Base:
      return "A simple Enum"
    case .Adjusted:
      return "A simple Enum (adjusted)"
    }
  }
  
  // need mutating because it modifies the enum
  mutating func adjust() {
    self = .Adjusted
  }
}

var c = SimpleEnumeration.Base
c.adjust()
let cDescription = c.simpleDescription


// Extensions
extension Int: ExampleProtocol {
  var simpleDescription: String {
    return "The number \(self)"
  }
  mutating func adjust() {
    self += 42
  }
}
7.simpleDescription

var i: Int = 7
i.adjust()
i.simpleDescription

extension Double {
  var absoluteValue: Double {
    var ret = self
    if (ret < 0) {
      ret *= -1
    }
    return ret
  }
}

(-1).absoluteValue
(-10.5).absoluteValue
(100).absoluteValue


let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription
(protocolValue as SimpleClass).anotherProperty