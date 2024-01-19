enum Food {
    case healthy, fastfood
}

let food = Food.healthy

// Game levels

enum Level {
    case easy
    case medium
    case hard
}

let newGame = Level.easy

switch newGame {
case .easy:
    print("Your game level is easy!")
case .medium:
    print("Your game level is medium!")
case .hard:
    print("Your game level is hard!")
}

// days of the week

enum daysOfTheWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    enum sunday { // вложенный енум
        case dayTime
        case nightTime
    }
}

var day = daysOfTheWeek.sunday.dayTime
day = daysOfTheWeek.sunday.nightTime

switch day {
case .dayTime:
    print("Day time is day!")
case .nightTime:
    print("Day time is night!")
}


