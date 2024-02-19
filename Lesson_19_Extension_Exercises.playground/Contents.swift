import Foundation

// Exercise 1. Create an extension for class String and put a subscript with range in it.
print("Exercise 1")

extension String {
    subscript (range: Range<Int>) -> String {
        return "\(obj) works from \(range.startIndex) to \(range.endIndex) hour."
    }
}

let obj = "The cafe"

print(obj[1..<3])

print("")

//Exercise 2. Create an extension for class Int and add 3 methods that convert value to square, cube, power.
print("Exercise 2.")

extension Int {
    var square: Int { return (self * self) }
    var cube: Int { return (self * self * self) }
    func power (_ num: Double) -> Double {
        return pow(Double(self), num)
    }
}

print("Value '3' powered to 3 equal to = \(3.power(3)).")
print("The squared value of '3' is equal to = \(2.square).")
print("The cubed value of '3' is equal to = \(3.cube).")

print("")

// Exercise 3. Create 3 structures.
print("Exercise 3.")

struct Human {
    var name: String
}

extension Human {
    func sayName() {
        print("My name is \(name).")
    }
}

var firstPerson = Human(name: "Kiril")
firstPerson.sayName()

extension String {
    func countLatters(_ latter: Character) -> String {
        var count = 0
        for i in self {
            if i == latter {
                count += 1
            }
        }
        return "The string has \(count) latters '\(latter)'."
    }
    
    func deleteLatters(_ latter: Character) -> String {
        var arrayOfCharacters = [Character]()
        for i in self {
            if i != latter {
                arrayOfCharacters.append(i)
            }
        }
        return String(arrayOfCharacters)
    }
}

"Hello!".countLatters("l")

var string = "why"

"Heollooooo".deleteLatters("o")

print("")

// Exercise 4. Add properties which will return quantity of characters in number.
print("Exercise 4.")

extension Int {
    func countChar() {
        print("The number has \(String(self).count) characters!")
    }
}

123.countChar()
