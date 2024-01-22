//Свойства
import Foundation

let maxCountName = 15

struct Observer {
    var name: String {
        willSet {
            print("The value want to be change " + newValue)
        }
        
        didSet {
            print("Changed " + oldValue)
            
            if name != "" {
                name = name.capitalized
            }
        }
    }
}

var observer = Observer(name: "Jack")
observer.name // getter  (метод для вызова переменной, чтобы прочесть её)
observer.name = "Ivan" // setter

struct ComputerProperty {
    var firstName: String {
        didSet {
            if firstName != "" {
                firstName = firstName.capitalized
            }
        }
    }
    var secondName: String
    
    var fullName: String {
        get {
            return firstName + " " + secondName
        }
        
        set {
            print("Setter is working" + newValue)
        }
    }
}

var computer = ComputerProperty(firstName: "Kiril", secondName: "Turov")

computer.firstName = "xavier"

print(computer.fullName)

// Свойства типа

struct myStruct {
    static var count = 0 // свойство типа
    var name: String
    
    init(name: String) {
        self.name = name
        myStruct.count += 1
    }
}

myStruct.count
var struc = myStruct(name: "Xavier")
var struc2 = myStruct(name: "Oleg")

print(myStruct.count)




class AgeBoy {
    lazy var callMe = 10 // переменная, которая загружается в память только после её вызова, до этого её нет
    
    static let maxAge = 8
    var name = String() {
        didSet {
            if name.count > maxCountName {
                name = oldValue
                print("The name must be not longer than 15 characters!")
            }
        }
    }
    var age = 8 {
        didSet {
            if age > AgeBoy.maxAge {
                age = oldValue
                print("The age should be betwen 6 to 8")
            }
        }
    }
}

var ageClass = AgeBoy()

ageClass.name = "Ivan"
ageClass.name = "Jack"
ageClass.age = 9
ageClass.name = "asasfasfasfasfaasd"
ageClass.name

ageClass.callMe // lazy переменная загрузилась

print("")

// Exercise 1. Задача 1:

//Создайте класс Car с тремя свойствами:
//brand - свойство для хранения марки автомобиля.
//maxSpeed - статическое свойство, представляющее максимальную скорость всех автомобилей данной марки.
//numberOfCars - статическое свойство, представляющее общее количество созданных экземпляров класса.
//Реализуйте инициализатор класса Car, который принимает параметры марки автомобиля, его текущей скорости и при создании нового экземпляра увеличивает значение numberOfCars на единицу.
//Создайте несколько экземпляров класса Car с разными марками и максимальными скоростями.
//Выведите в консоль информацию о каждом созданном автомобиле, включая марку, максимальную скорость и общее количество созданных автомобилей.
print("\tExercise 1")

class Car {
    static var NumbersOfCars = 0
    var brand: String
    var maxSpeed: Int
    
    func printInfo () {
        print("The brand of the car is - \(brand), the maximux speed of the car = \(maxSpeed) km/h")
    }
    
    init(brand: String, maxSpeed: Int) {
        self.brand = brand 
        self.maxSpeed = maxSpeed
        Car.NumbersOfCars += 1
    }
}

var volvoCar = Car(brand: "Volvo", maxSpeed: 300)
var bmwCar = Car(brand: "BMW", maxSpeed: 350)

volvoCar.printInfo()
bmwCar.printInfo()

print("Created cars value - \(Car.NumbersOfCars)")

print("")
