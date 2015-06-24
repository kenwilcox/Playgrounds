//: Bridge - The bridge pattern is used to separate the abstract elements of a class from the implementation details, providing the means to replace the implementation details without modifying the abstraction.

import UIKit

protocol Switch {
  var appliance: Appliance {get set}
  func turnOn()
}

protocol Appliance {
  func run()
}

class RemoteControl: Switch {
  var appliance: Appliance
  
  func turnOn() {
    self.appliance.run()
  }
  
  init(appliance: Appliance) {
    self.appliance = appliance
  }
}

class TV: Appliance {
  func run() {
    println("TV turned on")
  }
}

class VacuumCleaner: Appliance {
  func run() {
    println("Vacuum cleaner turned on")
  }
}

// Usage
var tvRemoteControl = RemoteControl(appliance: TV())
tvRemoteControl.turnOn()

var fancyVacuumCleanerRemoteControl = RemoteControl(appliance: VacuumCleaner())
fancyVacuumCleanerRemoteControl.turnOn()
