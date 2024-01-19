let name = ["Kiril", "Oleg", "Alex"]

let s = name.sorted()

let t1 = name.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(t1)

let t2 = name.sorted { (s1, s2) in return s1 < s2 }
print(t2)

let t3 = name.sorted{ (s1, s2) in s1 < s2}
print(t3)

let t4 = name.sorted { (s1, s2) in s1.count < s2.count }
print(t4)

let p1 = name.sorted(by: { $0 < $1 })
print(p1)

func makeTranslator(string: String) -> (String) -> (String) {
    return { (name: String) -> String in (string + " " + name + "!")}
}

var englishGreeting = makeTranslator(string: "Welcome, ")

print(englishGreeting("Kiril"))

print("")

// Random created closure
print("\tRandom created closure.")
let nameGreeting = { (name: String, greeting: String) -> String in
    return "\(greeting) , \(name)"
}

let myGreeting = nameGreeting("Kiril", "Hello")

print(myGreeting)

print("")

// Exercise 1. Create an array and sort this array by 2 closures.
print("\tExercise 1")

let numbers = [1, 7, 4, 8, 10, 20, 13, 200, 150]

print(numbers.sorted())

print(numbers.sorted(by: <))
print(numbers.sorted(by: >))
print(numbers.sorted{ (n1, n2) in n1 < n2 })

print("")

// Exercise 2. Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.
print("\tExercise 2")

let namesToAdd: (name1: String, name2:String, name3:String, name4:String) = ("Kiril", "Maya", "Rico", "Chris")
var Names = [String] ()

func sortAndAdd(names: String) -> [String] {
    Names.append(names)
    return Names.sorted(by: {$0.count < $1.count} )
}

sortAndAdd(names: namesToAdd.name1)
sortAndAdd(names: namesToAdd.name2)


print(Names)

print("")

// Exercise 3. Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами
print("\tExercise 3")

var Dictionary = [Int : String]()

Dictionary = [1 : "VPN", 2 : "Browser"]

func Exercise3PrintValueOfDictionary(key: Int) -> String {
    return "Key - \(key), value of the key - \(Dictionary[key]!)"
}

Exercise3PrintValueOfDictionary(key: 1)

print("")

// Exercise 4. Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.

var stringArray = [String]()
var intArray = [Int]()

func checkArray(arrayOfStrings: inout [String], arrayOfInts: inout [Int]) {
    if arrayOfInts.isEmpty{
        arrayOfInts.append(1)
    } else {
        print("Your array of integers is not empty!")
    }
    
    if arrayOfStrings.isEmpty{
        arrayOfStrings.append("TV")
    } else {
        print("Your array of strings is not empty!")
    }
}

checkArray(arrayOfStrings: &stringArray, arrayOfInts: &intArray)

stringArray
intArray

print("")
