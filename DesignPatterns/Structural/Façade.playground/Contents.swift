//: Façade - The façade pattern is used to define a simplified interface to a more complex subsystem.

import UIKit

class Eternal {
  class func setObject(value: AnyObject!, forKey defaultName: String!) {
    let defaults: NSUSerDefaults = NSUSerDefaults.standardUserDefaults()
    defaults.setObject(value, forKey: defaultName)
    defaults.synchronize()
  }
  
  class func objectForKey(defaultName: String!) -> AnyObject! {
    let defaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
    return defaults.objectForKey(defaultName)
  }
}

// Usage
Eternal.setObject("Disconnect me. I'd rather be nothing", forKey: "Bishop")
var obj = Eternal.objectForKey("Bishop") as! String
println(obj)

