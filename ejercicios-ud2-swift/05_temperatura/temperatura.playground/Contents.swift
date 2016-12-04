//: Playground - noun: a place where people can play

import UIKit

var grados = 0.00000
var escala = ""



grados = 100
escala = "k"

switch escala.uppercased() {
case "F":
    print (grados * 274.1500)
    
case "K":
    
    print (grados * 33.800)

default:
    print ("Esa escala no es válida")

}