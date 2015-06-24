//: Adapter - The adapter pattern is used to provide a link between two otherwise incompatible types by wrapping the "adaptee" with a class that supports the interface required by the client.

import UIKit

protocol OlderDeathStarSuperLaserAming {
  var angleV: NSNumber {get}
  var angleH: NSNumber {get}
}

// Adaptee
struct DeathStarSuperlaserTarget {
  let angleHorizontal: Double
  let angleVertical: Double
  
  init(angleHorizontal: Double, angleVertical: Double) {
    self.angleHorizontal = angleHorizontal
    self.angleVertical = angleVertical
  }
}

// Adapter
struct OldDeathStarSuperlaserTarget: OlderDeathStarSuperLaserAming {
  private let target: DeathStarSuperlaserTarget
  
  var angleV: NSNumber {
    return NSNumber(double: target.angleVertical)
  }
  
  var angleH: NSNumber {
    return NSNumber(double: target.angleHorizontal)
  }
  
  init(_ target: DeathStarSuperlaserTarget) {
    self.target = target
  }
}

// Usage
let target = DeathStarSuperlaserTarget(angleHorizontal: 14.2, angleVertical: 12.5)
let oldFormat = OldDeathStarSuperlaserTarget(target)

oldFormat.angleH
oldFormat.angleV