//: Playground - noun: a place where people can play

import UIKit


var precio = 2.5 // precio del producto
var dinero = 5.0 // dinero que echamos
var moneda2Euro = 0
var moneda1Euro = 0;
var moneda50cent = 0;
var moneda20cent = 0;
var  moneda10cent = 0;
var  moneda5cent = 0;
var  moneda2cent = 0;
var  restoEuro = 0;

var vueltas = Int(dinero * 100 - precio * 100)
if vueltas < 0 {
    print ("No LLega!!!!!")
} else {
        if (!((vueltas%2) == 0)) {
         moneda2Euro = vueltas / 200;
        restoEuro = vueltas % 200;
        moneda1Euro = restoEuro / 100;
        restoEuro = restoEuro % 100;
        restoEuro = restoEuro - 5;
        moneda5cent = moneda5cent + 1;
        moneda50cent = restoEuro / 50;
        restoEuro = restoEuro % 50;
        moneda20cent = restoEuro / 20;
        restoEuro = restoEuro % 20;
        moneda10cent = restoEuro / 10;
        restoEuro = restoEuro % 10;
        //moneda5cent = moneda5cent + (restoEuro / 5);
        //restoEuro = restoEuro % 5;
        moneda2cent = restoEuro / 2;
        restoEuro = restoEuro % 2;
    } else {
        // print ("va por los pares");
        moneda2Euro = vueltas / 200;
        restoEuro = vueltas % 200;
        moneda1Euro = restoEuro / 100;
        restoEuro = restoEuro % 100;
        moneda50cent = restoEuro / 50;
        restoEuro = restoEuro % 50;
        moneda20cent = restoEuro / 20;
        restoEuro = restoEuro % 20;
        moneda10cent = restoEuro / 10;
        restoEuro = restoEuro % 10;
        moneda2cent = restoEuro / 2;
        restoEuro = restoEuro % 2;
        
    }
    
    print ("Las vueltas se componen de:");
    print ("Monedas de 2 Euros: \(moneda2Euro)" );
    print ("Monedas de 1 Euro: \(moneda1Euro)");
    print ("Monedas de 50 Centimos: \(moneda50cent)");
    print ("Monedas de 20 Centimos: \(moneda20cent)");
    print ("Monedas de 10 Centimos: \(moneda10cent)");
    print ("Monedas de 5 Centimos: \(moneda5cent)");
    print ("Monedas de 2 Centimos: \(moneda2cent)");
    print ("Resto, sobra: \(restoEuro)");
    
}
