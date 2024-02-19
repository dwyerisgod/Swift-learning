// Приведение типов - Type Coasting, определение классовой иерархии - Nested Types.

class Media {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Film: Media {
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Music: Media {
    var artist: String
    
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class NewClass {
    
}

let mediaArray: [Any] = [ // or Media
    Film.init(name: "Terminator", director: "Unknown"),
    Film.init(name: "The end", director: "Unknown"),
    Music.init(name: "Credence", artist: "Chetta"),
    Music.init(name: "Paradise", artist: "Scrim"),
    NewClass(), 
    "name"
]

var count = (musicCount: 0, filmCount: 0)

for obj in mediaArray {
    if obj is Film {
        count.filmCount += 1
    } else if obj is Music {
        count.musicCount += 1
    }
}

print("There are \(count.filmCount) films and \(count.musicCount) tracks in your player!")

for value in mediaArray {
    if let musics = value as? Music {
        print("Song '\(musics.name)' by \(musics.artist)!")
    } else if let films = value as? Film {
        print("Film '\(films.name)' by \(films.director)!")
    }
}
