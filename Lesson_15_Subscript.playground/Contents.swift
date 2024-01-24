// Subscripts and indexes

import Foundation

var dict = ["key" : "value"]

dict["Key"] // получение значения по индексу (это и есть сабскрипт)

var array = ["mother", "father"]
array[0] // subsrcipt

struct Table {
    var multi: Int
    subscript(index: Int) -> Int {
        //get {
            return multi * index
        //}
    }
}

var table = Table(multi: 3)
table[10]

struct Man {
    var man1 = "man1: Hello"
    var man2 = "man2: I'm good"
    var man3 = "man3: Hi"

    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return man1
            case 1: return man2
            case 2: return man3
                
            default: return "Nothing is here"
            }
        }
        
        set {
            let value = newValue ?? ""
            switch index {
            case 0: return man1 = value
            case 1: return man2 = value
            case 2: return man3 = value
            default: break
            }
        }
    }
}

var say = Man()
say[0]

say[0] = "Hi Bob"
say.man1

// Exercise 1. Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.
print("\tExercise 1.")

//code
class family {
    var mother: String
    var father: String
    var children: String
    
    subscript(index: Int) -> String {
        switch index {
        case 0: return mother
        case 1: return father
        case 2: return children
        default: return "It's not valid index"
        }
    }
    
    init(mother: String, father: String, children: String) {
        self.mother = mother
        self.father = father
        self.children = children
    }
}

var family1 = family(mother: "Victoria", father: "Sean", children: "Jimmy")
print(family1[1])
//code

print("")

// Exercise 2. Cоздать Индекс который будет принимать число умножать его на 100 и делить на 2.
print("\tExercise 2.")

//code
class exercise2 {
    var value1 = 100
    var value2 = 2
    
    subscript (Value: Int) -> Int {
        return (Value * value1) / value2
    }
}

var Exercise2 = exercise2()
print("Subscript result from class exercise2 = \(Exercise2[2])!")
//code

print("")

// Exercise 3. Создать свой subscript у которого внутри есть оператор if else.
print("\tExercise 3.")

//code
class exercise3 {
    subscript(boolValue: Bool) -> String {
        if boolValue { return "The value is true!" } else { return "The value is false!" }
    }
}

var Exercise3 = exercise3()
print(Exercise3[false])
//code

print("")

// Exercise 4. Создать класс человек и в нем 3 проперти имя , возраст пол .
print("\tExercise 4.")

//code
class people {
    var firstName = String() {
        didSet {
            if firstName.count == 0 {
                print("You wrote nothing!")
                firstName = oldValue
            }
        }
    }
    
    var gender = String() {
        didSet {
            if gender != "male" && gender != "female" {
                print("Your gender must be male or female!")
                gender = oldValue
            }
        }
    }
    
    var age = Int() {
        didSet {
            if age <= 0 {
                print("Your age is not valid!")
                age = oldValue
            }
        }
    }
    
    init(firstName: String = String(), gender: String = String(), age: Int = Int()) {
        self.firstName = firstName
        self.gender = gender
        self.age = age
    }
}

var person1 = people()
person1.firstName = "Jack"
print(person1.firstName)
person1.gender = "male"
print(person1.gender)
person1.age = 0
//code

print("")

// Exercise 5. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства.
print("\tExercise 5.")

//code
class exercise5 : people {
    override init(firstName: String = String(), gender: String = String(), age: Int = Int()) {
    }
}

var person2 = exercise5()
person2.age = 0
print(person2.age)
//code

print("")

// Exercise 6. Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка ( воспользоваться enum для типов данных)
print("\tExercise 6.")

//code
enum Types {
    case String (String)
    case Int (Int)
    case Boolean (Bool)
    case Double (Double)
    case Float (Float)
}

var dictionary: Dictionary <String, Types> = ["Kiril" : Types.String("String")]

var myName = dictionary["Kiril"]
print(myName!)
//code

print("")
