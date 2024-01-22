// Subscripts and indexes

import Foundation

var dict = ["key" : "value"]

dict["Key"] // получение значения по индексу (это и есть сабскрипт)

var array = ["mother", "father"]
array[0] // subsrcipt

struct Table {
    var multi: Int
    subscript(index: Int) -> Int {
        //get {
            return multi * index
        //}
    }
}

var table = Table(multi: 3)
table[10]

struct Man {
    var man1 = "man1: Hello"
    var man2 = "man2: I'm good"
    var man3 = "man3: Hi"

    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return man1
            case 1: return man2
            case 2: return man3
                
            default: return "Nothing is here"
            }
        }
        
        set {
            let value = newValue ?? ""
            switch index {
            case 0: return man1 = value
            case 1: return man2 = value
            case 2: return man3 = value
            default: break
            }
        }
    }
}

var say = Man()
say[0]

say[0] = "Hi Bob"
say.man1
