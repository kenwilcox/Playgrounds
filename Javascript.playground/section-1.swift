// Playground - noun: a place where people can play

import UIKit
import JavaScriptCore

let context = JSContext()
context.evaluateScript("var num = 5 + 5")
context.evaluateScript("var names = ['Grace', 'Ada', 'Margret']")
context.evaluateScript("var triple = function(value) {return value * 3}")
let tripleNum: JSValue = context.evaluateScript("triple(num)")
tripleNum.toInt32()

let names = context.objectForKeyedSubscript("names")
let initialName = names.objectAtIndexedSubscript(0)
println("The first name: \(initialName.toString())")

let tripleFunction = context.objectForKeyedSubscript("triple")
let result = tripleFunction.callWithArguments([5])
println("Five tripled: \(result.toInt32())")

// Error Handler
context.exceptionHandler = { context, exception in
  println("JS Error: \(exception)")
}

//context.evaluateScript("function multiply(value1, value2) { return value1 * value2 ")

let simplifyString: @objc_block String -> String = { input in
  var mutableString = NSMutableString(string: input) as CFMutableStringRef
  CFStringTransform(mutableString, nil, kCFStringTransformToLatin, Boolean(0))
  CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, Boolean(0))
  return mutableString
}
context.setObject(unsafeBitCast(simplifyString, AnyObject.self), forKeyedSubscript: "simplifyString")

println(context.evaluateScript("simplifyString('안녕하새요!')"))
println(context.evaluateScript("simplifyString('ケン!')"))

