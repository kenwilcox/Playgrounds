// Playground - noun: a place where people can play

import UIKit

var myTuple = ("Tiger", "Bengal", 3)
let name = myTuple.0


var secondTigerTuple = (name: "Tigress", breed: "Indochinese Tiger", age: 3)

let age = secondTigerTuple.age
let ageAgain = secondTigerTuple.2

// Switch
switch secondTigerTuple {
case ("Tigress", "Malayan", 2):
  println("first case is true")
case (_, "Indochinese Tiger", _):
  // I like this!
  println("second case is true")
default:
  println("default is occuring")
}