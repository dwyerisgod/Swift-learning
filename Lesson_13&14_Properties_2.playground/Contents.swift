import Foundation

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

// Exercise 1. Создать класс "IOSStudents",добавить ему property: dateOfBirth, skills. Для тренировки.
// Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.
print("\tExercise 1.")

class IOSStudents {
    static let minAge = 18
    var firstName = String ()
    var secondName = String ()
    
    var fullName: String {
        get {
            return firstName + " " + secondName
        }
    }
    
    var age = Int() {
        didSet {
            if age < IOSStudents.minAge {
                age = oldValue
                print("You are not an adult!")
            }
        }
    }
}

var student1 = IOSStudents()
student1.firstName = "Kiril"
student1.secondName = "Turov"
student1.age = 18
student1.fullName
print(student1.age)

print("")

// Exercise 2. Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
// И создать 2 вычисляемых свойства - те же угол А,угол С.
// И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
// Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.
print("\tExercise 2.")

struct CreateTriangeln {
    var angleA = Int()
    var angleB = Int()
    var angleC: Int {
        180 - angleA - angleB
    }
}

var triangeln1 = CreateTriangeln(angleA: 30, angleB: 40)
print("Angle C of triangeln #1 is equal to \(triangeln1.angleC)")

print("")

// Exercise 3.Создать структуру "Резюме", у которой есть такие свойства:
//- Фамилия,
//- Имя.
//- Должность,
//- Опыт,
//- Контактные данные(телефон, емейл),
//- О себе(можно записать какие-то пару предложений на выбор).
print("\tExercise 3.")

//code
struct Resume {
    var secondName: String {
        didSet {
            if secondName != "" {
                secondName = secondName.capitalized
            }
        }
    }
    var firstName: String {
        didSet {
            if firstName != "" {
                firstName = firstName.capitalized
            }
        }
    }
    var position: String
    var experience: Int
    var contactInfo: (String, String)
    var description: String
}

var myContactInfo = ("k@", "+34")

var myResume = Resume(secondName: "turov", firstName: "kiril", position: "iOS Developer", experience: 0, contactInfo: myContactInfo, description: "None")

myResume.firstName = "kiril"

print("My personal email is - \(myResume.contactInfo.0) and my phone number is - \(myResume.contactInfo.1)!")
print("My first name is - \(myResume.firstName)")
//code

print("")

// Exercise 4. Создать журнал, чтобы можно было писать имя, фамилию и оценку
// Поставить ограничения: имя и фамилия не выше 15 символов каждое.
// И оценка не выше 5.
// Если везде значения превышаться выдавать об этом Сообщения в консоль.
print("\tExercise 4.")

//code
class Gournal {
    
    var name = String() {
        didSet {
            if name.count > 5 {
                name = oldValue
                print("New name contains more than 5 characters which is not accepteble!")
            }
        }
    }
    
    var surname = String() {
        didSet {
            if surname.count > 5 {
                surname = oldValue
                print("New surname contains more than 5 characters which is not accepteble!")
            }
        }
    }
    
    var grade = Int() {
        didSet {
            if grade > 5 || grade <= 0  {
                grade = 1
                print("The grade must be 1 to 5")
            }
        }
    }
}

var student = Gournal()
student.name = "Kiril"
student.surname = "Turov"
student.grade = 5
print(student.name, student.surname, student.grade)
//code

print("")

// Exercise 5. Написать класс,в котором есть 4 функции:
// - пустая, которая просто выводит сообщение через print,
// - которая принимаете параметры и выводит их в консоль,
// - которая принимает и возвращает параметры.
// - которая принимает замыкание и распечатывает результаты в консоль
print("\tExercise 5.")

//code
class classExercise5 {
    static let string = "Hello, World!"
    static let string2 = { print("I'm going walking!") }
    
    func firstFunction() {
        print(classExercise5.string)
    }
    
    func secondFunction(_ firstP: Int, _ secondP: Int){
        print("\(firstP) + \(secondP)")
    }
    
    func thirdFunction(firstP: Int, secondP: Int) -> String {
        return "\(firstP) + \(secondP)"
    }
    
    func fourthFunction(action: () -> ()) {
        print("I'm planning to go walking!")
        action()
        print("I'm coming home!")
    }
}

var exercise5 = classExercise5()
exercise5.firstFunction()
exercise5.secondFunction(5, 5)
print(exercise5.thirdFunction(firstP: 5, secondP: 5))
exercise5.fourthFunction(action: classExercise5.string2)
//code

print("")
