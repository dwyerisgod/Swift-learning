var FirstTuple: (Int, String, Bool) = (1, "Kiril", true)

//parsing

var (NumberOfStudent, NameOfStudent, Study) = FirstTuple

NumberOfStudent
NameOfStudent
Study

var SecondTuple: (Int, String, Bool) = (2, "Oleg", true)

var (_, NameOfStudent2, _) = SecondTuple
NameOfStudent2

let ThirdTuple = (num: 1, name: "Sean", isTru: true)
ThirdTuple.isTru

let (name1, name2, number1) = ("Oleg", "Kiril", 2)

name1

let myName = "Kiril"
let myAge = 18

//Создание тюпла внутри функции
print((myName, myAge))

// Exercise 1
// Create 5 different tuples. Two of them have to contain 3 names of months in English and 3 names of months in Russian.

var ruMonthsTuple: (String, String, String) = ("Январь", "Февраль", "Март")
var engMonthsTuple: (month1: String, month2: String, month3: String) = ("January", "February", "March")
var ruMonthsTuple2: (String, String, String) = (month1: "Январь", month2: "Февраль", month3: "Март")


//

var myLife = (name: "Kiril", job: false, age: 18, dateOfBirth: "21.12.2005")

print(engMonthsTuple.1)
print(myLife.name)

let myJob = myLife.job == true ? "I have a job" : "I don't have a job"

print(myJob)

// Exercise 2
// Display the tuples in 3 different ways.

print(ruMonthsTuple.1)

print(engMonthsTuple.1)

print(engMonthsTuple.month1)

var emptyTuple: (String, Int, Double)
emptyTuple = ("Kiril", 18, 18.2)
