class PerensClass {
    var array = [String]()
    
    var name = "Kiril"
    var age = 18
    
    // конструктор
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

class Son : PerensClass { // наследование
    func method(name: String) {
        print("Hello, \(name)")
    }
}

let sonClass = Son(name: "Kiril", age: 18) // экземпляр класса

sonClass.name // свойства класса

sonClass.method(name: "Kiril") // метод экземпляра класса

sonClass.name = "Kiril"
sonClass.age = 18

// When we have a small code it's better to use structure.

struct NameStruct {
    var name: String
    var age: Int
}

var str = NameStruct(name: "Kiril", age: 18)

str.name

print("")

// Exercise 1. Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.
print("\tExercise 1")

class House {
    var width: Double
    var height: Double
    
    func create() {
        print("You've created a house!")
    }
    
    func destroy() {
        print("You've destroyed a house!")
    }
    
    init(Width: Double, Height: Double) {
        self.height = Height
        self.width = Width
    }
}

var newHouse = House(Width: 17.0, Height: 18)
newHouse.create()
var oldHouse = House(Width: 20, Height: 40)
oldHouse.destroy()

print("")

// Exercise 2. Создайте класс с методами, которые сортируют массив учеников.
print("\tExercise 2")

class SortedArray {
    var names = [String]()
    
    func sort() -> [String] {
        self.names = names.sorted(by: <)
        return names
    }
    
    init(names: [String]) {
        self.names = names
    }
}

var array = ["Sean", "Pier", "Katy", "Xavier"]

var names = SortedArray(names: array)
names.sort()
names.names

print("")

// Exercise 3. Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов
print("\tExercise 3")

struct Resolution {
    var Height: Int
    var Width: Int
    
    mutating func printInfo() {
        print("The resolution is \(self.Height) x \(self.Width)")
    }
}

var vga = Resolution(Height: 1940, Width: 1040)

vga.printInfo()

print("VGA width is \(vga.Width), and height is \(vga.Height)")

// Структуры не могут быть наследованы в то время, как классы могут.
// Чтобы добавить метод в структуру нужно добавить mutating перед func.
// Структуры это value type, а классы это (reference type) ссылочный тип

print("")
