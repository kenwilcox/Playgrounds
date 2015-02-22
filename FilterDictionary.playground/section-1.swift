// Playground - noun: a place where people can play

import UIKit

var airports =
[
  ["code": "ATL", "name": "Hartsfield Jackson Atlanta International"],
  ["code": "PEK", "name": "Beijing Capital International"],
  ["code": "LHR", "name": "London Heathrow"],
  ["code": "LAX", "name": "Los Angeles International"],
  ["code": "DXB", "name": "Dubai International"]
]

// need a bang
var filteredAirports = airports.filter({
  ($0["code"]! as String).rangeOfString("X") != nil
  //($0["name"]! as String).rangeOfString("Inter") != nil
  //($0["name"] as NSString).containsString("I")

})
println(filteredAirports)


var visitors = [["age" : 22, "name": "Sue"], ["age" : 41, "name": "Samuel"], ["age" : 23, "name": "Sara"], ["age" : 30, "name": "Sally"]]

// Don't need a bang - huh?
var filteredVisitors = visitors.filter({
  //($0["age"] as Int) < 30
  //($0["name"] as NSString).containsString("u")
  ($0["name"] as String).rangeOfString("ue") != nil
})
println(filteredVisitors)
