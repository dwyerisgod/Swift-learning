let name = ["Kiril", "Oleg", "Alex"]

let s = name.sorted()

let t1 = name.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(t1)

let t2 = name.sorted { (s1, s2) in return s1 < s2 }
print(t2)

let t3 = name.sorted{ (s1, s2) in s1 < s2}
print(t3)

let t4 = name.sorted { (s1, s2) in s1.count < s2.count }
print(t4)

let p1 = name.sorted(by: { $0 < $1 })
print(p1)

func makeTranslator(string: String) -> (String) -> (String) {
    return { (name: String) -> String in (string + " " + name + "!")}
}

var englishGreeting = makeTranslator(string: "Welcome, ")

print(englishGreeting("Kiril"))
