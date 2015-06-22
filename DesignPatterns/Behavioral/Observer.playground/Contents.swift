//: Observer - The observer pattern is used to allow an object to publish changes to its state. Other objects subscribe to be immediately notified of any changes.

protocol PropertyObserver: class {
  func willChangePropertyName(propertyName: String, newPropertyValue: Any?)
  func didChangePropertyName(propertyName: String, oldPropertyValue: Any?)
}

class TestChambers {
  weak var observer: PropertyObserver?
  var testChamberNumber: Int = 0 {
    willSet(newValue) {
      observer?.willChangePropertyName("testChamberNumber", newPropertyValue: newValue)
    }
    didSet {
      observer?.didChangePropertyName("testChamberNumber", oldPropertyValue: oldValue)
    }
  }
}

class Observer: PropertyObserver {
  func willChangePropertyName(propertyName: String, newPropertyValue: Any?) {
    if newPropertyValue as? Int == 1 {
      println("Okay. Look. We both said a lot of things that you're going to regret.")
    }
  }
  
  func didChangePropertyName(propertyName: String, oldPropertyValue: Any?) {
    if oldPropertyValue as? Int == 0 {
      println("Sorry about the mess. I've really let the place go since you killed me.")
    }
  }
}

// Usage
var observerInstance = Observer()
var testChambers = TestChambers()
testChambers.observer = observerInstance
testChambers.testChamberNumber++