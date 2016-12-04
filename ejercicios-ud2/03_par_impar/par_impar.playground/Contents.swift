//: Playground - noun: a place where people can play

import UIKit

var numero = 65

var resto = 0

if numero == 0{
    
    print ("El 0 no es ni par ni impar, casi ni un número")
}else{
    resto = numero % 2
    if resto > 0 { print ("El numero es impar")
    }else{print ("El número es par")}
    
}