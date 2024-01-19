for l in "Hello, World!" {
    print(l)
}

var str = String()

str = "Hello World"

if str.isEmpty {
    print("Your string is empty")
} else {
    print("Your string is filled")
}

str.count

str.hasPrefix("H")
str.hasSuffix("e")

var fullEngGreeting = String()

var userName = String()
var engGreeting = String()

userName = "Kiril"
engGreeting = "Welcome"

fullEngGreeting = engGreeting + ", " + userName + "!"

