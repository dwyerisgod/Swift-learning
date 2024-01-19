//first exercise
var day: Int

day = 6

switch day {
case 1...5:
    print("It is weekdays")
case 6...7:
    print("It's weekend")
default:
    print("The day is not in range 1 to 7")
}

//second exercise
var name: String?
var age: Int?
var education: String

name = "Kiril"
age = 18
education = "Software developer"

switch (name, age) {
case ("Kiril", 18) where education == "Software developer":
    print("You're Kiril and your age is 18. You're studying software engineering.")
case ("Kiril", 18):
    print("You're Kiril and your age is 18.")
    
default:
    print("Information contains mistakes!")
    break
}

// Exercise 1.
// We have to create a loop with step in 200 and we have to break down the loop when it gets 15 step.

for i in 0...200 {
    if i == 16 {
        break
    }
    
    print("Step \(i)")
}

// Exercise 2
let Age = 18

switch Age {
case 0...7:
    print("You have to go to the kindergarten!")
case 8...18:
    print("You have to go to the school!")
case 19...50:
    print("You have to go to the job!")
case 51...130:
    print("It's time for you to retire!")
default:
    print("The age is not correct!")
}

// Exercise 3
for i in 0...30 where i % 2 == 0 {
    print("The number that equal to two in range of 0...30 is \(i)")
}

// Exercise 4
let names = ["Oleg", "Anna", "Kiril", "Tonya", "Nastya"]

print(names.sorted(by: <))
