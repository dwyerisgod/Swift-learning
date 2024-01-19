func Plus(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

var sum = Plus(num1: 1, num2: 2)

//
//func generalFunc(answer: Bool) → () - String t
//func (sayYes()
//→ String {
//return
//"Yes"
//func sayNo() → String t
//return
//"No"
//return answer? SayYes,: sayNo
//generalFunc (answer: false)()
//

func generalFunc(answer: Bool)-> String {
    func sayYes() -> String {
        return "Yes!"
    }
    func sayNo() -> String {
        return "No!"
    }
    return answer ? sayYes() : sayNo()
}

generalFunc(answer: true)

for i in 0...4 {
    print("H\(i)")
    print("e")
}

// Exercise Video

var gournal = [String]()

func addNote(name: String){
    gournal.append(name)
}

addNote(name: "Kiril")

print(gournal)

print("")

// Exercise 1. Create 3 functions. 1 have no parameters and doesn't return anything. 2 have parameters. 3 have parameters and return something back.
print("\tExercise 1")

func greeting() {
    print("Hello, dude!")
}

func greetingWithName(name: String) {
    print("Hello, \(name)!")
}

func greetingInVariable(name: String) -> String {
    return "Hello, \(name)"
}

greeting()
greetingWithName(name: "Kiril")
let Greeting = greetingInVariable(name: "Kiril")
print(Greeting)

print("")

// Exercise 2. Create a function that recieve a name and a surname and put it in array. After that we have to sort that array and print the result of the function.
print("\tExercise 2")

func exercise2(name: String, surname: String) -> [String] {
    var array = [String]()
    array.append(name)
    array.append(surname)
    return array.sorted(by: <)
}

let arrayExercise2 = exercise2(name: "Kiril", surname: "Turov")

print(arrayExercise2)

print("")

// Exercise 3. Create a function that calculates area of a circle.
print("\tExercise 3")

func countAreaOfCircle(radious: Float) -> Float {
    let p: Float = 3.14159
    return p * (radious * radious)
}

let area = countAreaOfCircle(radious: 2)
print("Area of circle = \(area)!")

print("")
