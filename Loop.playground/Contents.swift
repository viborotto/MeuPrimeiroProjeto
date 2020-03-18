import UIKit

//CONDICIONAIS
var age = 23
var isDrunk = false
var hasDocument = true

if age >= 18 && hasDocument && !isDrunk{
    print("Voce pode dirigir")
} else {
    print("Voce não pode dirigir")
}

if isDrunk{
    print("Voce não pode dirigir")
} else if age >= 18 && hasDocument {
    print("Voce pode dirigir")
}

if age >= 18{
    if isDrunk {
        print("Voce não pode dirigir")
    } else if hasDocument{
        print("Voce pode dirigir")
    }
}

var a = 5
var b = 6

if a <= 5 || b <= 5 {
    print("Um dos numeros é igual a 5")
}


//LOOPS
var cars = ["Ferrari", "Gol", "Porche", "Uno"]

for car in cars {
    //car so dentro do loop
    print("\(car) is really good")
}

var minutes = 60

for minute in 0...minutes{
    print(minute)
}

for minute in 0..<minutes{//ate antes do 60: 59
    print(minute)
}

//for com dicionarios
var brandAndCars = ["Ferrari": ["Testarosa", "Another Ferrari"], "Volks": ["Gol", "Fusca"], "Porche": ["911", "Carrera"]]

for (brand, cars) in brandAndCars {
    print("The brand \(brand) has these cars: \(cars)")
}

var carIndex = 0

while carIndex < cars.count {
    print("\(cars[carIndex])")
    carIndex += 1
}

//tipo Do While
repeat {
    print("\(cars[carIndex])")
       carIndex += 1
} while carIndex < cars.count
