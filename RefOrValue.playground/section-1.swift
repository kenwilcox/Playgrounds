// Playground - noun: a place where people can play

import UIKit

var dict:NSMutableDictionary = ["foo":"foo"]
dict["foo"] = "bar"

func printFoo() {
  println(dict["foo"]!)
}

printFoo()
dict["foo"] = "baz"
printFoo()


