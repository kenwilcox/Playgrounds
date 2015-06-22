//: Command - The command pattern is used to express a request, including the call to be made and all of its required parameters, in a command object. The command may then be executed immediately or held for later use.

protocol DoorCommand {
   func execute() -> String
}

class OpenCommand: DoorCommand {
  private let doors: String
  
  required init(doors: String) {
    self.doors = doors
  }
  
  func execute() -> String {
    return "Opened \(doors)"
  }
}

class CloseCommand: DoorCommand {
  private let doors: String
  
  required init(doors: String) {
    self.doors = doors
  }
  
  func execute() -> String {
    return "Closed \(doors)"
  }
}

class HAL9000DoorsOperations {
  private let openCommand: DoorCommand
  private let closeCommand: DoorCommand
  
  init(doors: String) {
    self.openCommand = OpenCommand(doors: doors)
    self.closeCommand = CloseCommand(doors: doors)
  }
  
  func close() -> String {
    return closeCommand.execute()
  }
  
  func open() -> String {
    return openCommand.execute()
  }
}

let podBayDoors = "Pod Bay Doors"
let doorModule = HAL9000DoorsOperations(doors: podBayDoors)
doorModule.open()
doorModule.close()
