// Exercise 4
print("\nExercises 4")

// code
enum Actions {
    case engineOn
    case engineOff
    case openWindows
    case closeWindows
    case fillInTruck
    case emptyTruck
}
// code

// ---
// Exercises 2 - 3, 5
print("\nExercises 2 - 3, 5")

// code
struct Car {
    var mark: String
    var yearOfProd: Int
    var trunkVolume: Int
    var isEngineOn: Bool
    var isWindowsOpen: Bool
    var filledTrunkVolume = 0
    var cargo = 0
    
    mutating func doAction (action: Actions) {
        switch action {
        case .engineOn:
            isEngineOn = true
            print("Engine of \(mark) is turned on!")
        case .engineOff:
            isEngineOn = false
            print("Engine of \(mark) is turned off!")
        case .openWindows:
            isWindowsOpen = true
            print("The windows of \(mark) is opened!")
        case .closeWindows:
            isWindowsOpen = false
            print("The windows of \(mark) is closed!")
        case .fillInTruck:
            if cargo <= 0 {
                print("You have to get something first!")
            } else if cargo > trunkVolume {
                print("You can't put so much in your truck, you have only \(trunkVolume) litters in your truck!")
            } else if cargo > trunkVolume - filledTrunkVolume {
                print("You can't put it in truck, since you have \(trunkVolume - filledTrunkVolume) litters!")
            } else {
                filledTrunkVolume += cargo
                print("Cargo is in truck! Available space is - \(trunkVolume - filledTrunkVolume)!")
            }
        case .emptyTruck:
            if filledTrunkVolume == 0 {
                print("Your truck is already empty!")
            } else {
                filledTrunkVolume = 0
                print("Your truck is empty now! Available space is \(trunkVolume) letters!")
            }
        }
    }
}

struct Truck {
    var mark: String
    var yearOfProd: Int
    var trunkVolume: Int
    var isEngineOn: Bool
    var isWindowsOpen: Bool
    var filledTrunkVolume = 0
    var cargo = 0
    
    mutating func doAction (action: Actions) {
        switch action {
        case .engineOn:
            isEngineOn = true
            print("Engine of \(mark) is turned on!")
        case .engineOff:
            isEngineOn = false
            print("Engine of \(mark) is turned off!")
        case .openWindows:
            isWindowsOpen = true
            print("The windows of \(mark) is opened!")
        case .closeWindows:
            isWindowsOpen = false
            print("The windows of \(mark) is closed!")
        case .fillInTruck:
            if cargo <= 0 {
                print("You have to get something first!")
            } else if cargo > trunkVolume {
                print("You can't put so much in your truck, you have only \(trunkVolume) litters in your truck!")
            } else if cargo > trunkVolume - filledTrunkVolume {
                print("You can't put it in truck, since you have \(trunkVolume - filledTrunkVolume) litters!")
            } else {
                filledTrunkVolume += cargo
                print("Cargo is in truck! Available space is - \(trunkVolume - filledTrunkVolume)!")
            }
        case .emptyTruck:
            if filledTrunkVolume == 0 {
                print("Your truck is already empty!")
            } else {
                filledTrunkVolume = 0
                print("Your truck is empty now! Available space is \(trunkVolume) letters!")
            }
        }
    }
}
// code

// ---
// Exercise 6
print("\nExercise 6")

// code
var car1 = Car(mark: "Mercedes", yearOfProd: 2020, trunkVolume: 100, isEngineOn: false, isWindowsOpen: false)
car1.doAction(action: .engineOn)
car1.cargo = 10
car1.doAction(action: .fillInTruck)
car1.cargo = 90
car1.doAction(action: .fillInTruck)
car1.doAction(action: .emptyTruck)
var truck1 = Truck(mark: "Volvo", yearOfProd: 2018, trunkVolume: 5000, isEngineOn: false, isWindowsOpen: false)
// code

// ---
// Exercise 7
print("Exercise 7")

// code
var dictionary: [String: String]
dictionary = [truck1.mark: truck1.mark]
for _ in dictionary {
    print(dictionary)
}
// code

// ---
// Exercise 9
print("Exercise 9")

// code
class CarEx9 {
    weak var driver: Man?
    
    deinit {
        print("Car was deleted!")
    }
}

class Man {
    var myCar: CarEx9?
    
    deinit {
        print("The man was deleted from memory!")
    }
}

var car: CarEx9? = CarEx9()
var man: Man? = Man()

car?.driver = man
man?.myCar = car

car = nil
man = nil
// code

// ---
// Exercise 10
print("\nExercise 10")

// code
class ManEx10 {
    var passport: Passport?
    
    deinit {
        print("The man was deleted from memory")
    }
}

class Passport {
    let man: ManEx10
    
    init(man: ManEx10) {
        self.man = man
    }
    
    deinit {
        print("Passport was deleted from memory!")
    }
}

var manEx10: ManEx10? = ManEx10()
var passport: Passport? = Passport(man: manEx10!)
manEx10?.passport = passport
passport = nil
man = nil
// code

// ---
