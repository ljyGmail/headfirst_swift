import UIKit

// * Functions in Swift let you reuse code

// * Built-in functions
print(min(9, -3, 12, 7))
print(max("zoo", "barn", "cinema"))

// * What can we learn from built-in  functions?

// * Sharpen your pencil
var pizzaOrdered = "Hawaiian"
var pizzaCount = 7

if (pizzaCount > 5) {
    print("Because more than 5 pizzas were orderd, a discount of 10% applies to the order.")
}

if (pizzaOrdered == "Prosciutto") {
    print("\(pizzaCount)x Prosciutto pizzas were ordered.")
}

if (pizzaOrdered == "Hawaiian") {
    print("\(pizzaCount)x Hawaiian pizzas were ordered.")
}

if (pizzaOrdered == "BBQ Chicken") {
    print("\(pizzaCount)x  BBQ Chicken pizzas were ordered.")
}

if (pizzaOrdered == "Meatlovers") {
    print("\(pizzaCount)x Meatlovers pizzas were ordered.")
}

// * Improving the situation with a function
/*
func pizzaOrdered(pizza: String, count: Int) {

}
*/

// * Writing the body of the function
func pizzaOrdered(pizza: String, count: Int) {
    if (count > 5) {
        print("Because more than 5 pizzas were ordered, a discount of 10% applies to the order.")
    }

    print("\(count)x \(pizza) pizzas were ordered.")
}

// * Using functions
pizzaOrdered(pizza: pizzaOrdered, count: pizzaCount)

// pass the values in directly as arguments
pizzaOrdered(pizza: "Hawaiian", count: 7)

// specify argument labels and parameter names independently
/*
func pizzaOrdered(thePizza pizza: String, theCount count: Int) {}
pizzaOrdered(thePizza: "Hawaiiann", theCount: 7)
*/

func pizzaOrdered(_ pizza: String, count: Int) {
    if (count > 5) {
        print("Because more than 5 pizzas were ordered, a discount of 10% applies to the order.")
    }

    print("\(count)x \(pizza) pizzas were ordered.")
}

pizzaOrdered("Vegetarian", count: 5)

// * Functjions deal in values
func multipyBy42(_ number: Int) {
    // number = number * 42
    print("The number multiplied by 42 is: \(number * 42)")
}

multipyBy42(2)

var myNumber = 3
multipyBy42(myNumber)
print("THe value of myNumber is: \(myNumber)")

func makeBob(_ name: inout String) {
    name = "Bob"
}

var name = "Tim"
makeBob(&name)
print(name)

// * Many happy returns (from your functions)
/*
func welcome(name: String) -> String {
    let welcomeMessage = "Welcome to the Swift Pizza shop, \(name)!"
    return welcomeMessage
}
*/

// But  Swift is meant to make things simple...
/*
func welcome(name: String) -> String {
    return "Welcome to the Swift Pizza shop, \(name)!"
}
*/

// implicit return
/*
func welcome(name: String) -> String {
    "Welcome to the Swift Pizza shop, \(name)!"
}
*/

// provide a default value for any parameter in a function
func welcome(name: String = "Customer") -> String {
    let welcomeMessage = "Welcome to the Swift Pizza shop, \(name)!"
    return welcomeMessage
}

// * A variable number of parameters (Variadic parameters)
func average(_ numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

let a = average(10, 21, 3.2, 16)
print("a: \(a)")
print(average(2, 4, 6))

// * What can you pass to a function?
func doAThingWithA(string: String,  anInt: Int, andABool: Bool) {
    print("The string says '\(string)', the integer is \(anInt), and the Boolean value is \(andABool)")
}

doAThingWithA(string: "I am a string!", anInt: 7, andABool: true)

// Expressions work as well:
var bobName = "Bob"

doAThingWithA(string: "Hello, \(bobName)!", anInt: 20+22, andABool: true)

// You can also pass variables and constants in to your functions as parameters.
var myString = "I love pizza"
var myInt = 42
let myBool = false

doAThingWithA(string: myString, anInt: myInt, andABool: myBool)

// * Every function has a type
/*
(Int, Int) -> Int
(String, Int) -> String
(Int) -> Void
() -> String
*/

// Function types work like every other type.
var manipulateInteger: (Int, Int) -> Int

func addNumbers(_ first: Int, _ second: Int) -> Int {
    return first + second
}

manipulateInteger = addNumbers

print("The result is: \(manipulateInteger(10, 90))")

// manipulateInteger variable can store any function with the same type
func multNumbers(_ first: Int, _ second: Int) -> Int {
    return first * second
}

manipulateInteger = multNumbers
print("The result is: \(manipulateInteger(2, 5))")

// let Swift infer the function type
var newMathFunction = multNumbers

// * Function types as parameter types
func doMathPrintMath(_ manipulateInteger: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("The result is: \(manipulateInteger(a, b))")
}

doMathPrintMath(addNumbers, 5, 10)

// return a function from another function
typealias Pizza = String

func makeHawaiianPizza() -> Pizza {
    print("One Hawaiian pizza, coming up!")
    print("Hawaiian pizza is mostly cheese, ham, and pineapple.")
    return "Hawaiian Pizza"
}

func makeCheesePizza() -> Pizza {
    print("One Cheesey Pizza, coming up!")
    print("Cheesey pizza is just cheese, more cheese, and more cheese.")
    return "Cheese Pizza"
}

func makePlainPizza() -> Pizza {
    print("One Plain Pizza, coming up!")
    print("This pizza has no toppings! Not sure why you'd order it.")
    return "Plain Pizza"
}

func order(pizza: String) -> () -> Pizza {
    if (pizza == "Hawaiian") {
        return makeHawaiianPizza
    } else if (pizza == "Cheese") {
        return makeCheesePizza
    } else {
        return makePlainPizza
    }
}

var myPizza = order(pizza: "Hawaiian")
print(myPizza())

// * Multiple return types
func greetingsFor(name: String) -> (hello: String, goodbye: String) {
    let hello = "Welcome to the pizza shop, \(name)"
    let goodbye = "Thanks for visiting the pizza shop, \(name)"

    return (hello, goodbye)
}

print(greetingsFor(name: "Bob").hello)

// * FUnctions don't have to stand alone
func sayHello() {
    func showMessage() {
        print("Hello, Swift Programmers!")
    }

    showMessage()
}

sayHello()

//  Enums allow you to create groups of related values.
enum PlayerState {
    case dead(cause: String)
    case blockaded(byEnemy: String)
    case winner (score: String)
}

func setPlayerState(state: PlayerState) {
    print("The player state is now \(state)")
}

setPlayerState(state: .dead(cause: "crop failure"))

// * Switching with enums
var playerOneState: PlayerState = .dead(cause: "crop failure")

switch(playerOneState) {
case .dead(let cause):
    print("Player One died of \(cause).")
case .blockaded(let byEnemy):
    print("Player One was blockaded by \(byEnemy).")
case .winner(let score):
    print("Player One is the winner with \(score) points!")
}



