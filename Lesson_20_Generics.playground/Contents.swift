// Generics. Generics in Swift enable the creation of flexible and reusable functions, methods, and types that can work with any type, promoting type safety and code reuse.

var stringArray = ["Hi", "Hello", "Good bye!"]
var intArray = [1, 2, 3, 4, 5]
var doubleArray = [1.2, 1.5, 1.3, 1.4]

func printStringFromArray(a: [String]) {
    for i in a {
        print(i)
    }
}

func printIntFromArray(a: [Int]) {
    for i in a {
        print(i)
    }
}

func printDoubleFromArray(a: [Double]) {
    for i in a {
        print(i)
    }
}

printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)
printDoubleFromArray(a: doubleArray)

// Generic interpretation

func printElementFromArray<T>(a:[T]) {
    for elements in a {
        print(elements)
    }
}

printElementFromArray(a: intArray)

// Generic interpretation 2

func doNothing<T>(x: T) -> T {
    return x
}

doNothing(x: "Do nothing")
doNothing(x: 123)

// Generic interpretation 3

var emptyArray = [String]()

struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
}

var myFriendsList = ["Vlad", "Artur"]

var arrays = GenericArray(items: myFriendsList)
arrays.push(item: "Jack")
