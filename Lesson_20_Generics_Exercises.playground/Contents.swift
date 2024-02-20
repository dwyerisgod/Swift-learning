// Exercise 1. Create generic class, structure, function, enumeration.
print("Exercise 1.")

class Train<T> {
    var name: T
    var places: Int
    var departure: String
    
    init(name: T, places: Int, departure: String) {
        self.name = name
        self.places = places
        self.departure = departure
    }
}

struct Taxi<T> {
    var name: T
    var driver: String
}

func departureTimeInfo<T>(departureTime: T) {
    print("The train will departure at \(departureTime)!")
}

enum Numbers<T> {
    case even(T)
    case odd(T)
}

var trainNum1 = Train(name: 12, places: 1000, departure: "12:00")
var trainNum2 = Train(name: "Veter", places: 850, departure: "11:00")
trainNum2.name

var taxa = Taxi(name: 12, driver: "Johnson")

departureTimeInfo(departureTime: trainNum1.departure)

var num1 = Numbers.even(2)

print("")

// Exercise 2. Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)

var arrayOfObjects = [Any]()

func putObjInArr<T>(obj: T, array: inout [Any]) {
    array.append(obj)
}

putObjInArr(obj: taxa, array: &arrayOfObjects)

print(arrayOfObjects)

// Exercise 3. Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)

class Main<T> {
    var firstName: String
    var secondName: String
    var age: T
    var fullName: String {
        get {
            firstName + " " + secondName
        }
    }
    
    func printHello() {
        print("Hi, my name is \(firstName) and my surname is \(secondName)!")
    }
    
    subscript (index: Int) -> String{
        switch index {
        case 1: "My name is \(firstName)!"
        case 2: "My surname is \(secondName)!"
        default: "Choose between 1 and 2!"
        }
    }
    
    init(firstName: String, secondName: String, age: T) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
    }
}

extension Main {
    func objectsInItem() -> String {
        return "I have something"
    }
}

var person1 = Main(firstName: "Kiril", secondName: "Turov", age: 18)

print(person1.fullName)
print(person1[1])
person1.objectsInItem()

