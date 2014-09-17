// Playground - noun: a place where people can play

// Either or works
//import UIKit
import Foundation

let randomNumber = Int(arc4random_uniform(UInt32(5)))

func Random(higestNumber: Int) -> Int {
  return Int(arc4random_uniform(UInt32(higestNumber)))
}

Random(42)
Random(4400)

