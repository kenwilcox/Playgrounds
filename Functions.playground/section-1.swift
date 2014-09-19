// Playground - noun: a place where people can play

import UIKit

class Tiger {
  
}

func displayTiger(tiger:Tiger, withTransition: Bool) {
  if (withTransition) {
    println("With Transition")
  }
  else {
    println("no transition")
  }
}
let tiger = Tiger()
displayTiger(tiger, true)

func turnOffAppliance (applianceName: String, isOn:Bool) {
  if isOn {
    println("Please turn off the \(applianceName).")
  }
  else {
    println("I actually turned the \(applianceName) off already.")
  }
}

turnOffAppliance("Toaster", true)


func additionFunction (firstArgument: Int, secondArgument: Int) -> Int {
  let sumOfArguments = firstArgument + secondArgument
  return sumOfArguments
}

var additionAnswerOfIntegers = additionFunction(2, 4)
let finalAnswer = additionFunction(additionAnswerOfIntegers, 5)
println("\(finalAnswer)")