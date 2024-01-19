let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.count == 0 {
    print("Array is empty!")
} else {
    print("Array is filled!")
}

array += constArray

array += ["w"]

array.append("s")

array.insert("!", at: 4)

// Exercise 1.

let amount = [1, 50, 200, 500, 2, 5]

func countAll(array: [Int]) -> String {
    
    var fullAmount = 0
    
    for i in array {
        fullAmount = fullAmount + i
    }
    
    return "Full amount equals to \(fullAmount)"
}

print(countAll(array: amount))

// Exercise 2.
//- создать массив "дни в месяцах"
//- элементов содержащих количество дней в соответствующем месяце
//
// используя цикл for и этот массив
//
//- выведите количество дней в каждом месяце (без имен месяцев)
//- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
//- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
//
//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

let month = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

let dayInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for (index, days) in dayInMonth.enumerated() {
    print("\(index + 1) month has \(days) days")
}

print("")

for (index, month) in month.enumerated() {
    let days = dayInMonth[index]
    print("\(month) has \(days) days!")
}

print("")

let tuplesMonthAndDay = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июля", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь",31), ("Ноябрь", 30), ("Декабрь", 31)]

for year in tuplesMonthAndDay.reversed() {
    print("\(year.0) - \(year.1)")
}
