// Generics

func repeat<ItemType>(item: ItemType, times: Int) -> [ItemType] {
  var result = [ItemType]()
  for i in 0..<times {
    result.append(item)
  }
  return result
}

repeat("knock", 4)
repeat(6, 3)

// Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
  case None
  case Some(T)
}
// I'm not sure what this is doing...
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)


func anyCommonElements <T, U where T: SequenceType, U: SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
      for rhsItem in rhs {
        if lhsItem == rhsItem {
          return true
        }
      }
    }
    return false
}

anyCommonElements([1,2,3], [3])


// Ok, so this is cool and it works, but I don't ever want to write code like this
// I can't read it - I doubt I will know what it does tomorrow.
func anyCommonElementsFunc <T, U where T: SequenceType, U: SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> () -> ((T, U) -> Array<T.Generator.Element>) {
  
  func generatedFunction(lhs: T, rhs: U) -> Array<T.Generator.Element> {
    var commonElements = Array<T.Generator.Element>()
    for lhsItem in lhs {
      for rhsItem in rhs {
        if lhsItem == rhsItem {
          commonElements.append(lhsItem)
        }
      }
    }
    return commonElements
  }
  return generatedFunction
}
let arrayUnion: (([Int], [Int]) -> [Int]) = anyCommonElementsFunc()
arrayUnion([1, 2, 3], [3, 2])

