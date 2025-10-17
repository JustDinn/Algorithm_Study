import Foundation

func solution(_ chars: String) -> String {
    var oneCountList = ""
    var result = ""
    var alphabet: [Character: Int] = [:]
    
    for char in chars {
        if alphabet[char] != nil {
            alphabet[char]! += 1
        } else {
            alphabet[char] = 1
        }
    }
    
    for char in alphabet {
        if char.value == 1 {
            oneCountList += String(char.key)
        }
    }
    
    result = String(oneCountList.sorted())
    
    return result
}