//--- Наследование (Inheritance) ---

class Human {
    var name = "John"
    var surname = "Dewilson"
    var fullname: String {
        return name + " " + surname
    }
    
    func printInfo() -> String {
        return "Your fullname is \(fullname)"
    }
}

class Man : Human {
    override func printInfo() -> String { return super.printInfo() + " Unknown" }
}

var human1 = Man()
human1.name
human1.printInfo()

//--- Инкапсуляция (Encapsulation) ---
// A language mechanism for restricting direct access to some of the object's components.

class Car {
    public var brandName = "BMW"
    private var age = 2
    
    final func startEngine () { //возможность редактировать в наследованом классе исчезает
        print("The engine is running.")
    }
    
    public func openWindow () {
        print("The window is opening.")
    }
}

class BMW_Car : Car { }

var vehicle1 = BMW_Car()
vehicle1.openWindow()

//--- Полиморфизм (Polymorphism) ---
// Polymorphism is a concept in programming that allows you to use a single interface (like a method or a function) to represent different types of objects.

class General {
    func methodHi () {
        print("Hello, I'm general")
    }
}

class Human1: General {
    override func methodHi() {
        print("Hello, I'm human1")
    }
}

let message = General()
let message2 = Human()

var array = [message, message2] as [Any]
// doesn't work
//for obj in array {
//    obj.methodHi()
//}

print("")

// Exercise 1.
// 1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".
// 2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.
// 3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
// 4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".
print("\tExercise 1 - 4.")

//code
class People {
    var name = String()
    var height = Double()
    var weight = Double()
    var sex = String() {
        didSet {
            if sex != "male" && sex != "female" {
                self.sex = "(Is not important!)"
            }
        }
    }
    
    public func say() {
        print("My name is - \(name), my height is - \(height), my weight is - \(weight) and my gender is - \(sex).")
    }
}

class Cook: People {
    override func say() {
        print("I'm a cook! My name is - \(name), my height is - \(height), my weight is - \(weight) and my gender is - \(sex).")
    }
}

class Manager: People {
    override func say() {
        print("I'm a manager! My name is - \(name), my height is - \(height), my weight is - \(weight) and my gender is - \(sex).")
    }
}

var guy1 = Cook()
guy1.name = "Sasha"
guy1.height = 190
guy1.weight = 80
guy1.sex = "male"
guy1.say()

var guy2 = Manager()
guy2.name = "Olga"
guy2.height = 165
guy2.weight = 55
guy2.sex = "female"
guy2.say()

var arra = [guy1, guy2]
for people in arra {
    print(people.name)
    print(people.height)
    people.say()
}
//code

print("")

// 5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.
// 6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
print("\tExercise 5 and 6.")

//code
class IOSDev: People {
    var experience = Int()
    
    override func say() {
        print("\(super.say()) I'm an IOSDeveloper with \(experience) years of experience!")
    }
}

var me = IOSDev()

me.name = "Kiril"
me.height = 180
me.sex = "male"
me.weight = 67
me.experience = 1
// me.say() // doesn't work because I have to set this method in super class with return value string.

arra.append(me)
for people in arra {
    print(people.name)
    print(people.height)
    people.say()
}
//code

print("")

//7. Вывести все это в обратном порядке(Google в помощь).
print("\tExercise 7.")

//code
for (index, element) in arra.enumerated().reversed() {
    print(index, element.name)
}

print("")

for people in arra.reversed() {
    print(people.name)
    print(people.height)
    people.say()
}
//code

print("")

//Для тех кто не просто учит программирование а хочет еще и работать.

//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).
print("\tExercise 8.")

//code
class Martian {
    var destroyedPlanets = Int()
    var flights = Int()

    func say() {
        print("Hello, I'm Martian! I hope I haven't scared you.")
    }
}

var alienMartian = Martian()
alienMartian.destroyedPlanets = 10
alienMartian.flights = 200
print("Done!")
//code

print("")

//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
print("\tExercise 9.")

//code
class Alien: Martian {
    override func say() {
        print("Hello, I'm Alien! I hope I haven't scared you.")
    }
}

var regularAlien = Alien()
regularAlien.destroyedPlanets = 200
regularAlien.flights = 20000
print("Done!")
//code

print("")

//10. Объединить всех people и Марсианинов) в один массив.
print("\tExercise 10.")

//code
var arrayAll = [guy1, guy2, regularAlien, alienMartian] as [Any]
print("Done!")
//code

print("")

//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
print("\tExercise 11.")

//code
print("I can't handle it!")
//code

print("")

