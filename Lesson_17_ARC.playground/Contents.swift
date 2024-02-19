// Automatic reference counting

class Person {
    var name = String()
    
    init(name: String = String()) {
        self.name = name
        print("Name variable was initialized!")
    }
    
    deinit {
        print("Name variable was delited from memory!")
    }
}

var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Jack")
ref2 = ref1
ref3 = ref1

ref1 = nil // с первого раза ссылка остается, так-как у нас ещё 2 обьекта ссылаются на класс
ref2 = nil
ref3 = nil

// ---- 2
// --- if we see optional type (? at the end of variable) - we have write "weak" before var/let

class Hotel {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var apatment: Apartment?
    
    deinit {
        print("The \(name) is going out of the hotel!")
    }
}

class Apartment {
    let room: String
    
    init(room: String) {
        self.room = room
    }
    
    weak var hotel: Hotel?
    
    deinit {
        print("The apartment is free!")
    }
}

var objHotel: Hotel?
var objAparment: Apartment?

objHotel = Hotel(name: "John Smith")
objAparment = Apartment(room: "2002")

objHotel!.apatment = objAparment
objAparment!.hotel = objHotel

objHotel = nil
objAparment = nil

// --- 3
// --- if we see notoptional type - we have to write "unowned" before war/let

class Country {
    let name: String
    var capitalCity: City!
    
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    
    unowned let country: Country
    
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Ukraine", capitalName: "Kiev")
print("Capital of \(country.name) is \(country.capitalCity.name)")

