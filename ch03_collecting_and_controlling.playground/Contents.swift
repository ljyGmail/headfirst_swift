import UIKit

// * Sorting pizzas
var pizzaHawaiian = "Hawaiian"
var pizzaCheese = "Cheese"
var pizzaMargherita = "Margherita"
var pizzaMeatlovers = "Meatlovers"
var pizzaVegetarian = "Vegetarian"
var pizzaProsciutto = "Prosciutto"
var pizzaVegen = "Vegen"

// * Swift collection types
/*
Arrays
let numbers = [7, 14, 6, 1, 8]
 
Sets
var numbers = Set([1, 7, 9, 13, 3])
var numbers: Set = [1, 7, 9, 13, 3]
 
Dictionaries
var scores = ["Tom": 5, "Bob": 10, "Tim": 9, "Mars": 14, "Tony": 3]
*/

// * Collecting values in an array
let catNames = ["Lucy", "Tom", "Billy", "Bruce", "Lady", "Doug", "Susan"]

// create an array of integers using type annotation
var numbers: [Int] = [7, 14, 6, 1, 8]

// accessing elements
print("numbers[0]: \(numbers[0])")
print("numbers[3]: \(numbers[3])")

// append an element
numbers.append(42)

// insert an element
numbers.insert(11, at: 2)

// remove an element
numbers.remove(at: 3)

// change the value of a specifc element
numbers[2] = 307

print("numbers: \(numbers)")

// * Sharpen your pencil
// 1. Create this array, as a variable, storing the pizza names in it.
var pizzas = ["Hawaiian", "Cheese", "Margherita", "Meatlovers", "Vegetarian",  "Prosciutto", "Vegan"]

// 2. Print the element of the array that contains "Vegetarian".
print(pizzas[4])

// 3. Append the pizza "Pepperoni" to the array, without changing the rest of the array.
pizzas.append("Pepperoni")


// 4. Insert a new pizza, "ham, Pineapple, and Presto", at index 2, shuffling everything after along by one index.
pizzas.insert("Ham, Pineapple, and Pesto", at: 2)

// 5. Remove the "Cheese" pizza from the array entirely, leaving the rest intact.
pizzas.remove(at: 1)

// 6. Swap the "Prosciutto" pizza for a "Pumpkin and Feta" pizza, without changing the rest of the array.
pizzas[5] = "Pumpkin and Feta"

// 7. Print out the whole array.
print(pizzas)


// * How big is that array, exactly? Is it empty?
var ingredients = ["Oregano", "Ham", "Tomato", "Olives", "Cheese"]

print("There are \(ingredients.count) ingredients in this pizza.")

print("ingredients is empty?: \(ingredients.isEmpty)")
print(ingredients.max())
print(ingredients.min())

// * Collecting values in a set
var evenNumbers = Set([2, 4, 6, 8])

var oddNumbers: Set = [1, 3, 5, 7]
print("oddNumbers: \(oddNumbers)")

// insert items into sets
oddNumbers.insert(3)
oddNumbers.insert(9)
print("oddNumbers after inserting: \(oddNumbers)")

// remove elements
oddNumbers.remove(3)
print("oddNumbers after removing: \(oddNumbers)")

// * Sharpen your pencil
var pizzasSet = Set(["Hawaiian", "Vegan", "Meatlovers", "Hawaiian"])
print(pizzasSet)

// * Collecting values in a dictionary
var scores = ["Paris": 5, "Marina": 10, "Tim": 9, "Jon": 14]

// Declare dictionaries using type annotation
//var scores: [String: Int] = ["Paris": 5, "Marina": 10, "Tim": 9, "Jon": 14]

// Create an empty dictionary
//var scores: [String:Int] = [:]

// Read a value from a dictionary

print("scores[\"Paris\"]!:", scores["Paris"]!) // force unwrapping


// add new values or change existing ones in a dictionary
scores.updateValue(17, forKey: "Bob")

scores["Josh"] = 4
print("scores: \(scores)")

// * Exercise
var forbiddenPizzas: Set = ["Lemon and Pumpkin", "Hawaiian with a Fried Egg", "Schnitzel and Granola"]

forbiddenPizzas.insert("Checken and Boston Beans")
forbiddenPizzas.remove("Lemon and Pumpkin")

// What does forbiddenPizza contain now?
print(forbiddenPizzas)

var dessertPizzaOrders = ["Rocky Road": 2, "Nutella": 3, "Caramel Swirl": 1]

// Print the quantity of Rocky Road, and the quantity of Caramel Swirl. Then and a new order for 17 Banana Split pizzas.
print(dessertPizzaOrders["Rocky Road"]!)
print(dessertPizzaOrders["Caramel Swirl"]!)
//dessertPizzaOrders.updateValue(17, forKey: "Banana Split")
dessertPizzaOrders["Banana Split"] = 17
print(dessertPizzaOrders)


// * Tuples
var point = (x: 10, y: 15)
print("point.x: \(point.x)")

point = (50, 10)
print("point.0: \(point.0)")

// * Everyone needs a good alias
// Written without any type alias
/*
var temp: Int = 35
var result: Int

result = (temp*9/5)+32
print("\(temp) C is \(result) F")
*/

// Use type alias
typealias Celsius = Int
typealias Fahrenheit = Int

var temp: Celsius = 35
var result: Fahrenheit

result = (temp*9/5)+32
print("\(temp) C is \(result) F")

// * Control flow statements

// * if statements
var userLovesPizza: Bool = true

if(userLovesPizza) {
    print("Enjoy")
}

if(userLovesPizza) {
    print("Enjoy!")
} else {
    print("Sorry!")
}

// * switch statements
var pizzaOrdered = "Hawaiian"

if(pizzaOrdered == "Hawaiian") {
    print("Hawaiian is my favorite. Great choice!")
} else if(pizzaOrdered == "Four Cheese") {
    print("The only thing better than cheese is four cheeses")
} else if(pizzaOrdered == "BBQ Chicken") {
    print("Chicken and BBQ sauce! What could be better?")
} else if(pizzaOrdered == "Margherita") {
    print("It's a classic for a reason!")
}

switch(pizzaOrdered) {
case "Hawaiian":
    print("Hawaiian is my favorite. Great choice!")
case "Four Cheese":
    print("The only thing better than cheese is four cheeses.")
case "BBQ Chicked":
    print("Chicken and BBQ sauce! What could be better?")
case "Margherita":
    print("It's a classic for a reason!")
default:
    break
}

// * Building a switch statement
var number = 42

switch number {
case 9:
    print("The number is 9! A mundane number.")
case 42:
    print("It's the meaning of life!")
case 47:
    print("The meaning of life, corrected for inflation.")
case 317:
    print("A rather large number.")
default:
    break
}

// * Range operators
print(1...4) // closed range operator
print(1..<5) // half-open range operator

// one-sided range operator
let myRange = 5...
let myOtherRange = ...100

print("myRange.contains(1): " + String(myRange.contains(1)))
print("myRange.contains(70): " + String(myRange.contains(70)))

print("myOtherRange.contains(50): " + String(myOtherRange.contains(50)))
print("myOtherRange.contains(-10): " + String(myOtherRange.contains(-10)))

// * More complex switch statements
let studentScore = 88
var scoreResult = "TBD"

switch studentScore {
case 0...49:
    scoreResult = "Fail"
case 50...59:
    scoreResult = "Pass"
case 60...69:
    scoreResult = "Credit"
case 70...79:
    scoreResult = "Distinction"
case 80...89:
    scoreResult = "High Distinction"
case 100:
    scoreResult = "Perfect"
default:
    scoreResult = "Unknown"
}

print("scoreResult: \(scoreResult)")

var num = 5

switch num {
case _ where num % 2 == 0:
    print("This number is an Even number!")
default:
    print("This number is an Odd number!")
}
