var ProducerSet: [String: String] = ["AudioCard" : "Focusiter"]

print(ProducerSet)

var Dictionary = [1 : "Kiril", 2 : "Oleg" ]

let emptyDictionary = [String:Int] ()

emptyDictionary.isEmpty

Dictionary.updateValue("Roma", forKey: 1)

for key in Dictionary.keys {
    print("\(key)")
}

for key in Dictionary.keys {
    print("Key is - \(key), name is - \(Dictionary[key]!)")
}

for(key, name) in Dictionary {
    print ("Key is - \(key), name is - \(name)")
}

print("")

var dict = [String: Int]()

dict = ["MacBook": 2000, "iMac": 3000, "iPhone": 1500]
dict["MacBook"]

var family: Dictionary <String, Int> = ["Mother" : 38, "Father" : 37, "Brother" : 11]

family["Mother"]

family["Mother"] = 39

// family = [:] delete whole dictionary

for key in family.keys {
    print("Key is - \(key), value is - \(family[key]!)")
}

print("")

for (key, value) in family {
    print("Key is - \(key), value is - \(value)")
}

// Exercise #1
// Cоздать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

var ruMonthDictionary = [Int : String] ()
var engMonthDictionary = [Int : String] ()

ruMonthDictionary = [1 : "Январь", 2 : "Февраль", 3 : "Март", 4 : "Апрель", 5 : "Май", 6 : "Июнь", 7 : "Июль", 8 : "Август", 9 : "Сентябрь", 10 : "Октябрь", 11 : "Ноябрь", 12 : "Декабрь"]

engMonthDictionary = [1 : "January", 2 : "February", 3 : "March", 4 : "April", 5 : "May", 6 : "June", 7 : "July", 8 : "August", 9 : "September", 10 : "October", 11 : "November", 12 : "December"]

// Exercise #2
//Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

print(ruMonthDictionary.keys)
print(engMonthDictionary.keys)

for (key, value) in engMonthDictionary {
    print("The number of the month is - \(key), the name of the month is - \(value)")
}

// Exercise #3
//Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пар значений

var EmptyDictionary = [String : Int] ()

if EmptyDictionary.isEmpty {
    EmptyDictionary = ["Kiril" : 18, "Oleg" : 19]
} else {
    print("The dictionary is not empty")
}
