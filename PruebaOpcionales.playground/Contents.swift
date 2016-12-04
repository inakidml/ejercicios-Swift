//: Playground - noun: a place where people can play

import UIKit

var str:String! = "Hello, playground" // opcional implicito, que se puede extraer directamente pero si no tiene valor, casca

print("\(str)")

str.characters.count
var str2:String?  //opcional standard

print("\(str2)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

print(possibleNumber)
print(convertedNumber)

//forced unwrapping
//print(convertedNumber!)

//optional binding
if let c=convertedNumber{
print(c)
}else{
print("no hay dato")
}
//operador de coalescencia nil, si tiene dato lo asigna, si no, asigna la variable del otro lado del ??
var numeroConvertido = convertedNumber ?? 10000
print(numeroConvertido)
