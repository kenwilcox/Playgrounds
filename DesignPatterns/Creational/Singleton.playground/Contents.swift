//: Singleton - The singleton pattern ensures that only one object of a particular class is ever created. All further references to objects of the singleton class refer to the same underlying instance. There are very few applications, do not overuse this pattern!

public class DeathStarSuperlaser {
  static let sharedInstance = DeathStarSuperlaser()
  
  // get around static properties (pre Swift 2.0)
  struct Static {
    static var count = 0
  }
  
  public var count: Int {
    get {
      return Static.count
    }
  }
  
  private init() {
    // just make it private
    Static.count++
  }
}

// Usage
let laser1 = DeathStarSuperlaser.sharedInstance
laser1.count
let laser2 = DeathStarSuperlaser.sharedInstance
laser2.count

// What the heck - this should fail, right?
// Singleton will only work properly as an external file
let laser3 = DeathStarSuperlaser()
laser3.count
