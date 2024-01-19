// We use optionals when the date can be not received and can be cause of an error.

var date: String?

date = "21.12.2022"

if date != nil {
    print("The date is - \(date!)") // "!" means that the compiler must unwrappe the optional
} else {
    print("The date was not recieved!")
}

let age: String?
age = "10"

if Int(age!) != nil {
    print("your age is - \(age!)")
}

var Date: String = ""

Date = "01.09.2024"

if Date.isEmpty == true {
    print("The date is not available")
} else {
    print("The date is \(Date)")
}

// Exercise 1
// Create 5 constant string variables that contain numbers and count them all.

let str1: String = "20"
let str2: String = "50"
let str3: String = "5"
let str4: String = "15"
let str5: String = "10"

if Int(str1) != nil, Int(str2) != nil, Int(str3) != nil, Int(str4) != nil, Int(str5) != nil{
    let sum = Int(str1)! + Int(str2)! + Int(str3)! + Int(str4)! + Int(str5)!
    print("Sum of the numbers = \(sum)")
} else {
    print("The string doesn't contain a number")
}

let emptyConst: Int? = nil

let myName: String? = "Kiril"

for _ in myName! {
    print("My name is \(myName!)")
}

let ageOfAllFamily = [18, 11, 37, 38]

for _ in ageOfAllFamily {
    print("Ages of all family is - \(ageOfAllFamily)")
}
