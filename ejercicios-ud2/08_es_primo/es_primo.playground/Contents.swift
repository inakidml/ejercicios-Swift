//: Playground - noun: a place where people can play

import UIKit

var numero = 1331411
var resto = 1
var esPrimo = false
var n = 2

if numero == 0 {
    print ("El 0 no es un número")
}else if numero == 1 {
    print ("el 1 es primo")
}else if numero == 2 {
    print ("El 2 es primo")
}else {
    repeat {
        resto = numero%n
        n = n + 1
        
    }while numero>n && resto != 0
    if resto != 0 && numero == n{
        print ("Es primo")
    } else {
        print ("no es primo")
    }
}