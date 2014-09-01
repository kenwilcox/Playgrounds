// hrm, need @objc for the optional parameter
@objc protocol Speaker {
  func Speak()
  optional func TellJoke()
}

class Vicki: Speaker {
  func Speak() {
    println("Hello, I am Vicki!")
  }
  func TellJoke() {
    println("Q: What did Sushi A say to Sushi B?")
  }
}

class Ray: Speaker {
  func Speak() {
    println("Yo, I am Ray!")
  }
  func TellJoke() {
    println("Q: Whats the object-reiented way to becoming wealthy?")
  }
  func WriteTutorial() {
    println("I'm on it!")
  }
}

class Animal {
  
}
class Dog: Animal, Speaker {
  func Speak() {
    println("Woof!")
  }
}

var speaker:Speaker = Ray()
speaker.Speak()
//speaker.WriteTutorial() // error!
(speaker as Ray).WriteTutorial()

speaker = Vicki()
speaker.Speak()
// Crazy cool - don't care if the method exists
speaker.TellJoke?()
speaker = Dog()
speaker.TellJoke?()

protocol DateSimulatorDelegate {
  func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker)
  func dateSimulatorDidEnd(sim:DateSimulator, a:Speaker, b:Speaker)
}

class LoggingDateSimulator:DateSimulatorDelegate {
  func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker) {
    println("Date started!")
  }
  func dateSimulatorDidEnd(sim:DateSimulator, a:Speaker, b:Speaker) {
    println("Date ended!")
  }
}

// Delegates
class DateSimulator {
  let a:Speaker
  let b:Speaker
  var delegate: DateSimulatorDelegate?
  
  init(a:Speaker, b:Speaker) {
    self.a = a
    self.b = b
  }
  
  func simulate() {
    self.delegate?.dateSimulatorDidStart(self, a: self.a, b: self.b)
    println("Off to dinner...")
    a.Speak()
    b.Speak()
    println("Walking back home...")
    a.TellJoke?()
    b.TellJoke?()
    self.delegate?.dateSimulatorDidEnd(self, a: self.a, b: self.b)
  }
}

let sim = DateSimulator(a:Vicki(), b:Ray())
sim.delegate = LoggingDateSimulator()
sim.simulate()
