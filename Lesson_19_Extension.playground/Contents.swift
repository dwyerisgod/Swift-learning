// Extension. An extension in Swift allows you to add new functionality to an existing class, structure, enumeration, or protocol type without modifying its original implementation.

extension String {
    func sayHello() {
        print("Hello!")
    }
}

var hello = "Hi!"
hello.sayHello()

var a = String()
a.sayHello()

"Hi".sayHello()

// --- INT extension ---

extension Int {
    var squared: Int {
        return (self * self)
    }
}

var newInt = 30
newInt.squared

extension Int {
    func funcSquared() -> Int {
        return (self * self)
    }
}

var sqrInt = 3
sqrInt.funcSquared()

14.funcSquared()

// --- Extension for classes ---

class People {
    var nick = "The swift dev."
}

var realPerson = People()
realPerson.nick

extension People {
    func allSelf() -> String {
        return "I'm a swift developer!"
    }
}

var secondRealPerson = People()

print(secondRealPerson.allSelf())
