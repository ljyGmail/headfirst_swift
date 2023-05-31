import UIKit

// Building from the blocks
var myPizza = "Hawaiian"
var printMessage: Bool = true

print("About to print message!")
print("About to print message!")

if printMessage {
    for _ in 1...5 {
        print("It is obvious that \(myPizza) is the greatest pizza.")
    }
}

myPizza += " is the greatest pizza."
print(myPizza)

// Basic operators

// Operating swiftly with mathmatics
print("100 + 50 = \(100 + 50)")
print("92 - 8 = \(92 - 8)")
print("8 / 4 = \(8 / 4)")
print("9 * 10 = \(9 * 10)")
print("42 % 2 = \(42 % 2)")

print("917 - 17 + 4 = \(917 - 17 + 4)")

// Express yourself

print("10 / 6 = \(10 / 6)")
print("10.0 / 6.0 = \(10.0 / 6.0)")
print("9 % 2 = \(9 % 2)")

// Names and types: peas in a pod
let favNumber = 8.7
// favNumber = 10.2 constants can't be assgin a new value

var coffeesConsumed = 17
coffeesConsumed = 25

// Not all data is numbers
var age: Int
age = 35

var name: String
name = "James Tiberius Kirk"

var gravity: Double
gravity = 9.80665

let greatestFoodIsPizza: Bool
greatestFoodIsPizza = true

// Mutability
var pizzaShopName = "Big Mike's Pizzeria"
// let pizzaShopName = "Big Mike's Pizzeria"
pizzaShopName = "Swift Pizza"

// Stringing things along with types
var greeting = "Hi folks, I'm a String! I'm very excited to be here."

var message: String = "I'm also a String. I'm also excited to be here."

var positiveMessage = ""

var negativeMessage: String

positiveMessage = "Live long and prosper"
negativeMessage = "You bring dishonor to your hourse."

var speech = "Our mission is to seek out new life and new civilizations."
speech += " To boldly go where no one has gone before!"

// String interpolation
var warpSpeed = 9.9
let shipName = "USS Enterprise"
var destination = "Ceti Alpha V"
var status = "Ship \(shipName) en route to \(destination), traveling at a speed of warp factor \(warpSpeed)"
print("status: \(status)")
