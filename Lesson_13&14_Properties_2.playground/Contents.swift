struct Person {
    var clothe: String {
        willSet {
            updateUI(string: "You're changing clothe for \(newValue) after using \(clothe)!")
        }
        didSet {
            updateUI(string: "You've changed clothe. Previously it was \(oldValue), now it's \(clothe)!")
        }
    }
    
    var age: Int
    
    var ageMultiplied: Int {
        get {
            return age * 2
        }
    }
}

func updateUI(string: String) {
    print(string)
}

var person1 = Person(clothe: "T-shirt + jeans", age: 18)
person1.clothe = "Jeans + hoodie"
person1.ageMultiplied

