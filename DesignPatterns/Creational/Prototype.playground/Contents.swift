//: Prototype - The prototype pattern is used to instantiate a new object by copying all of the properties of an existing object, creating an independent clone. This practice is particularly useful when the construction of a new object is inefficient.

class ChungasRevengeDisplay {
  var name: String?
  let font: String
  
  init(font: String, name:String?=nil) {
    self.font = font
    if let n = name {
      self.name = n
    }
  }
  
  func clone(_ name: String?=nil) -> ChungasRevengeDisplay {
    return ChungasRevengeDisplay(font: self.font, name: name)
  }
}

// Usage
let Prototype = ChungasRevengeDisplay(font: "GotanProject")

let Philippe = Prototype.clone("Philippe")

let Christoph = Prototype.clone("Christoph")

let Eduardo = Prototype.clone()
Eduardo.name = "Eduardo"

println(Philippe.name!)
println(Eduardo.name!)