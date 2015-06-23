//: Factory Method - The factory pattern is used to replace class constructors, abstracting the process of object generation so that the type of the object instantiated can be determined at run-time.

protocol Currency {
  func symbol() -> String
  func code() -> String
}

class Euro: Currency {
  func symbol() -> String {
    return "€"
  }
  
  func code() -> String {
    return "EUR"
  }
}

class UnitedStatesDollar: Currency {
  func symbol() -> String {
    return "$"
  }
  
  func code() -> String {
    return "USD"
  }
}

enum Country {
  case UnitedStates, Spain, France, UK
}

class CurrencyFactory {
  class func currencyForCountry(country: Country) -> Currency? {
    switch country {
    case .Spain, .France:
      return Euro()
    case .UnitedStates:
      return UnitedStatesDollar()
    default:
      return nil
    }
  }
}

// Usage
let noCountryCode = "No Currency Code Availble"

CurrencyFactory.currencyForCountry(.Spain)?.code() ?? noCountryCode
CurrencyFactory.currencyForCountry(.UnitedStates)?.code() ?? noCountryCode
CurrencyFactory.currencyForCountry(.France)?.code() ?? noCountryCode
CurrencyFactory.currencyForCountry(.UK)?.code() ?? noCountryCode

