// VARIABLES Y CONSTANTES

let cat = "🐱"; print(cat) //constante
var catTwo = "🐱2"//Variable
var x = 0.0, y = 0.0, z = 0.0
var welcomeMessage = "Hello" // Inferencia de tipos
var welcomeMessage: String // Anotaciones de tipo
welcomeMessage = "Hello"
var red, green, blue: Double
// CONVERSIONES DE TIPO (CAST)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

// OPTIONALS
// Permiten definir variables que pueden o no tener valor
// Se crean añadiendo ? al tipo de dato de la variable
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
var serverResponseCode: Int? = 404
serverResponseCode = nil // Sin valor

// Imprescindible: Int no es lo mismo que Int?
// Forced unwrapping: usando !
// Optional binding: para extraer el valor en un if o while
// Optional chaining: usando ?, cuando trabajemos con propiedades de estructuras o clases

// Forced unwrapping
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
if convertedNumber != nil {
print("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
print("\(possibleNumber) could not be converted to an integer") }

// Optional binding
let possibleNumber = "123"
if let actualNumber = Int(possibleNumber) {
print("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
print("\(possibleNumber) could not be converted to an integer") }

//Opcionales implícitos
// Se declaran con ! en vez de ? en el tipo de dato
// No necesitan de ! para acceder al valor, pero si no tienen valor disparar un error en tiempo de ejecución
// Se usan en la inicialización de clases con referencias unowned

//Operador de coalescencia nil
// Se utiliza con opcionales mediante ??
// Permite extraer el valor del opcional o si vale nil, un valor por defecto
// a ?? b es una abreviatura de a != nil ? a! : b

let defaultColorName = "red"
var userDefinedColorName: String? // nil
var colorNameToUse = userDefinedColorName ?? defaultColorName // colorNameToUse == "red"
userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName // colorNameToUse == "green"

// COMENTARIOS

//
/* */
/* /* */ */

// CONSOLA

var friendlyWelcome = "Hello!"
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// STRINGS

var emptyString = ""
var anotherEmptyString = String()
// concatenar con + y +=
// se comparan directamente con el operador ==
// hasPrefix(_:) y hasSuffix(_:) para comparar el principio o el final de la cadena
// propiedad .count de characters
// .append() para añadir caracteres al final

// Acceso a los caracteres
let greeting = "Guten Tag!"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // a

// insertar
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex) // welcome now equals "hello!"
welcome.insert(contentsOf:" there".characters, at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!

// Eliminar
welcome.remove(at: welcome.index(before: welcome.endIndex)) // welcome now equals "hello there"
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range) // welcome now equals "hello"

// TUPLAS
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(http404Error.0)")
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")

// OPERADORES RELACIONALES
== Igual
!= Distinto
> Mayor que
< Menor que
>= Mayor o igual que
<= Menor o igual que
=== Idéntico
!== No idéntico
c ? a:b Si c, entonces a. Si no c, entonces b.

// OPERADORES LÓGICOS
! Negación lógica, NOT
&& Conjunción lógica, AND
|| Disyunción lógica, OR

//ESTRUCTURAS DE CONTROL
// IF
if expresión {
sentencia1
sentencia2
}
else {
sentencia3
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
print("It's really warm. Don't forget to wear sunscreen.")
} else {
print("It's not that cold. Wear a t-shirt.")
}

//SWITCH
// A diferencia de en C o Java, no hace falta break en cada caso
// No hay fallthrough automático
// No puede haber casos vacíos
// Debe evaluar todos los casos posibles o tener default
// Se puede afinar más la condición usando where
// Admite intervalos

//Transferencia de control
// Se puede poner break en un caso para cortar la ejecución y forzar a que el switch termine
// El uso de break permite escribir casos vacíos en el switch (un comentario no basta, daría error)

switch variable {
case valor:
sentencia
sentencia
...
case valor:
sentencia
...
default:
sentencia
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
	naturalCount = "no"
case 1..<5:
	naturalCount = "a few"
case 5..<12:
	naturalCount = "several"
case 12..<100:
	naturalCount = "dozens of"
case 100..<1000:
	naturalCount = "hundreds of"
default:
	naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

// switch con tuplas
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
	print("(0, 0) is at the origin")
case (_, 0):
	print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
	print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
	print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
	print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
// Value bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
	print("on the x-axis with an x value of \(x)")
case (0, let y):
	print("on the y-axis with a y value of \(y)")
case let (x, y):
	print("somewhere else at (\(x), \(y))")
}

// Switch con where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
	print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
	print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
	print("(\(x), \(y)) is just some arbitrary point")
}

//Fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
	description += " a prime number, and also"
	fallthrough
default:
	description += " an integer."
}
print(description)

// REPETITIVAS
//Transferencia de control
// Se puede poner break dentro de un bucle para cortar la repetición actual y forzar a que el bucle termine
// Se puede utilizar continue dentro de un bucle para terminar la repetición actual y pasar a la siguiente
// Se pueden utilizar etiquetas para definir a quien afecta un posible break o continue

// Operadaores de rango
// ... Rango cerrado 1...5 1, 2, 3, 4, 5
// ..< Rango semicerrado 1..<5 1, 2, 3, 4

// while
var i = 0
while i < 3 {
print("W: El valor de i es: \(i)")
i += 1
}
// repeat - while
var j = 0
repeat {
print("RW: El valor de j es: \(j)")
j += 1
} while j < 3

// for-in
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// for-in (for each)
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
print("\(animalName)s have \(legCount) legs")
}

