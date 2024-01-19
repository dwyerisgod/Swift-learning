enum Food {
    case healthy, fastfood
}

let food = Food.healthy

// Game levels

enum Level {
    case easy
    case medium
    case hard
}

let newGame = Level.easy

switch newGame {
case .easy:
    print("Your game level is easy!")
case .medium:
    print("Your game level is medium!")
case .hard:
    print("Your game level is hard!")
}

// days of the week

enum daysOfTheWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    enum sunday { // вложенный енум
        case dayTime
        case nightTime
    }
}

var day = daysOfTheWeek.sunday.dayTime
day = daysOfTheWeek.sunday.nightTime

switch day {
case .dayTime:
    print("Day time is day!")
case .nightTime:
    print("Day time is night!")
}

// Creating your own type

enum Operation {
    case double (Double)
    case integer (Int)
    case float (Float)
    case string (String)
}

var dictionary: Dictionary <String, Operation> = [
    "Double" : Operation.double(22.5),
    "Integer" : Operation.integer(2),
    "Float" : Operation.float(3.141241241),
    "String" : Operation.string("Hello, World!")
]

print(dictionary["String"]!)

// Exercise 1. Create 2 enumerations with different types.

enum program {
    case Integers (Int)
    case Floats (Double)
}

print("")

// Exercise 2. Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.
print("\tExercise 2")

enum Profile {
    case gender
    case age
    case fullname
    case experience
}

switch myProfile {
case .gender:
    print("Your gender is male!")
case .age:
    print("Your age is 18 years old!")
case .fullname:
    print("Kiril Turov!")
case .experience:
    print("You don't have experience in IT work!")
}


let myProfile = Profile.gender

print("")

// Exercise 3. Cоздать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
print("\tExercise 3")

enum Rainbow { case red, yellow, orange, green, blue, purple}

func coloursIntoObjects (colour: Rainbow) {
    switch colour {
    case .red:
        print("Apple")
    case .yellow:
        print("Banana")
    case .orange:
        print("Orange")
    case .green:
        print("Kivi")
    case .blue:
        print("Blueberry")
    case .purple:
        print("Plum")
    }
}

var str = coloursIntoObjects(colour: Rainbow.red)

print("")

// Exercise 4. Создать функцию, которая выставляет оценки ученикам в школе.
print("\tExercise 3")

enum grades { case five, four, three, two, one }

var highschool5thgrade = [String : Int] ()

func estimate(nameofclass: inout [String:Int], name: String, grade: grades) {
    switch grade {
    case .five:
        nameofclass[name] = 5
    case .four:
        nameofclass[name] = 4
    case .three:
        nameofclass[name] = 3
    case .two:
        nameofclass[name] = 2
    case .one:
        nameofclass[name] = 1
    }
}

estimate(nameofclass: &highschool5thgrade, name: "Bjorn", grade: .five)
estimate(nameofclass: &highschool5thgrade, name: "Jim", grade: .three)

print(highschool5thgrade)
