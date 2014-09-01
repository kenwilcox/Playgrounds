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
    println("Q: What did Shshi A say to Sushi B?")
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

