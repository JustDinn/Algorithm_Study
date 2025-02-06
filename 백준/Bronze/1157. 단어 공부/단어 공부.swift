import Foundation

guard let wordInput = readLine() else { exit(0) }

let word = wordInput.uppercased()
var dict: [Character: Int] = [:]
var maxChar: Character = " "
var maxCharCount = 0
var isMultiMaxChar = false

for char in word {
    dict[char, default: 0] += 1
}

for (key, value) in dict {
    if value > maxCharCount {
        maxCharCount = value
        maxChar = key
        isMultiMaxChar = false
    } else if value == maxCharCount {
        isMultiMaxChar = true
    }
}

// 공동 최빈 문자가 있다면 ? 출력, 아니라면 최빈 문자 출력
isMultiMaxChar ? print("?") : print(maxChar)