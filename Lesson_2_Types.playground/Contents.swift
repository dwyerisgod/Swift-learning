let names: [String] = ["Kiril", "Alex", "Sean", "Xavier"]

for name in names {
    print(name)
}

// or

let count = names.count

for i in 0..<count {
    print("Hi, \(i+1) name is \(names[i])")
}

// typealias [cоздание своего типа данных]

typealias SchoolType = String
let mySchool: SchoolType = "School #314"
let yourSchool: SchoolType = "School #200"

print("My school is \(mySchool)!")
print("Your school is \(yourSchool)!")

typealias SchoolDictionaryType = [String : Int]

let schoolsNumber: SchoolDictionaryType = [
    "My school" : 314,
    "Your school" : 200
]

print("My school number is \(schoolsNumber["My school"]!)")
print("Your school number is \(schoolsNumber["Your school"]!)")

// "приведение типов" - "type casting"

let a: Int = 2
let b: Float = 2.314134134134
let aPlusB = a + Int(b) 
let aMultipliedByB = Float(a) * b

var True: Bool = true

if !True {
    print(aPlusB)
} else {
    print(aMultipliedByB)
}
