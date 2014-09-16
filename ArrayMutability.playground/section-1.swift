// Playground - noun: a place where people can play

import UIKit

var tigerNames = ["Tigger", "Tigress"]
tigerNames.append("Jacob")
println("\(tigerNames)")
tigerNames += ["Ken", "Destiny"]
println("\(tigerNames)")

tigerNames[1] = "Spar"
println("\(tigerNames)")

tigerNames[0...2] = ["Katie", "James", "George"]
println("\(tigerNames)")

// or replace and add more than what we said to?
tigerNames[0..<1] = ["Smith", "Robert"]
tigerNames[0..<1] = ["Gallup", "Simon", "Tolhurst", "Lol"]

tigerNames.insert("Julie", atIndex: 1)
println("\(tigerNames)")

tigerNames.removeLast()
println("\(tigerNames)")

tigerNames.removeAtIndex(1)
println("\(tigerNames)")

tigerNames.removeAll(keepCapacity: false)
println("\(tigerNames)")
