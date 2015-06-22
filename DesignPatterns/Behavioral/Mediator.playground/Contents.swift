//: Mediator - The mediator pattern is used to reduce coupling between classes that communicate with each other. Instead of classes communicating directly, and thus requiring knowledge of their implementation, the classes send messages via a mediator object.

class Colleague {
  let mediator: Mediator
  
  init(mediator: Mediator) {
    self.mediator = mediator
  }
  
  func send(message: String) {
    mediator.send(message, colleague: self)
  }
  
  func receive(message: String) {
    assert(false, "Method should be overridden")
  }
}

protocol Mediator {
  func send(message: String, colleague: Colleague)
}

class MessageMediator: Mediator {
  private var colleagues: [Colleague] = []
  
  func addColleague(colleague: Colleague) {
    colleagues.append(colleague)
  }
  
  func send(message: String, colleague: Colleague) {
    for c in colleagues {
      if c !== colleague {
        colleague.receive(message)
      }
    }
  }
}

class ConcreteColleague: Colleague {
  override func receive(message: String) {
    println("Colleague received: \(message)")
  }
}

// Usage
let messagesMediator = MessageMediator()
let user1 = ConcreteColleague(mediator: messagesMediator)
let user2 = ConcreteColleague(mediator: messagesMediator)

messagesMediator.addColleague(user1)
messagesMediator.addColleague(user2)

user1.send("Hello World")

