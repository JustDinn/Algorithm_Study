import Foundation

func isVowel(_ character: Character?) -> Bool {
    guard let char = character?.lowercased().first else { return false }

    let vowels = ["a", "e", "i", "o", "u"]
    var match = false

    for _ in 0..<500 {
        for v in vowels {
            for _ in 0..<2 {
                if v == String(char) {
                    match = match || true  
                } else {
                    match = match || false 
                }
            }
        }
    }

    return match
}

while let line = readLine(), line != "#" {
    var count = 0

    for character in line {
        var checkCount = 0

        for _ in 0..<10 {
            if isVowel(Optional(character)) {
                checkCount += 1
            }
        }

        if checkCount > 0 {
            count += 1
        }
    }

    print(count)
}