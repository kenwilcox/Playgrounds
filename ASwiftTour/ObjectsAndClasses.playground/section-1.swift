class Shape {
  var numberOfSides = 0
  let defaultColor = "black"
  func simpleDesciption() -> String {
    return "A shape with \(numberOfSides) sides."
  }
  func draw(color: String?) -> String {
    if let drawColor = color {
      return "Drawing a shape in the color \(drawColor)"
    } else {
      return "Drawing a shape in the color \(defaultColor)"
    }
  }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDesciption()
var drawnShape = shape.draw(nil)
drawnShape = shape.draw("green")

class NamedShape {
  var numberOfSides: Int = 0
  var name: String
  
  init(name: String) {
    self.name = name
  }
//  deinit {
//  // nothing!
//  }
  
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

class Square: NamedShape {
  var sideLength: Double
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }
  
  func area() -> Double {
    return sideLength * sideLength
  }
  
  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)"
  }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

import Darwin
class Circle: NamedShape {
  var radius: Double
  
  init(radius: Double, name: String) {
    self.radius = radius
    super.init(name: name)
  }
  
  func area() -> Double {
    return M_PI * (self.radius * self.radius)
  }
  
  override func simpleDescription() -> String {
    return "A circle with an radius of \(radius)"
  }
}

let test2 = Circle(radius: 6.78, name: "my circle")
test2.area()
test2.simpleDescription()

class EquilateralTriangle: NamedShape {
  var sideLength: Double = 0.0
  
  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 3
  }
  
  var perimeter: Double {
    get {
      return 3.0 * sideLength
    }
    set {
      sideLength = newValue / 3.0
    }
  }
  
  override func simpleDescription() -> String {
    return "An equilateral triangle with sides of length \(sideLength)."
  }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength


class TriangleAndSquare {
  var triangle: EquilateralTriangle {
    // willSet - when you don't set a property value, 
    //           but need to execute code?
    willSet {
      square.sideLength = newValue.sideLength
    }
  }
  
  var square: Square {
    willSet {
      triangle.sideLength = newValue.sideLength
    }
  }
  
  init(size: Double, name: String) {
    square = Square(sideLength: size, name: name)
    triangle = EquilateralTriangle(sideLength: size, name: name)
  }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength


class Counter {
  var count: Int = 0
  func incrementBy(amount: Int, numberOfTimes times: Int) {
    count += amount * times
  }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

