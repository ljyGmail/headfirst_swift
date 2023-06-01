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

// * How big is that array, exactly? Is it empty?
var ingredients = ["Oregano", "Ham", "Tomato", "Olives", "Cheese"]

print("There are \(ingredients.count) ingredients in this pizza.")

print("ingredients is empty?: \(ingredients.isEmpty)")
//print(ingredients.max())
//print(ingredients.min())

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
