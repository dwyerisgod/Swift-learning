var NumbersSet: Set<Int> = [2, 4, 5]

var Numbers = [5, 6, 7]

var SetOfNumbers = Set(Numbers)


print(NumbersSet)
print(SetOfNumbers)

if (SetOfNumbers.contains(6)) {
    print("The set contains number 6")
} else {
    print("The set doesn't contain number 6")
}

// Exercise 1. Create a Swift function named uniqueNumbers that takes an array of integers as input and returns a set containing only the unique numbers from the array.

let array: [Int]
array = []

func uniqueNumbers(Array: [Int]) -> Set<Int> {
    if Array.count > 0 {
        var result = Set<Int> ()
        result = Set(Array)
        return result
    } else {
        return [0]
    }
}

let result = uniqueNumbers(Array: array)

print(result)
