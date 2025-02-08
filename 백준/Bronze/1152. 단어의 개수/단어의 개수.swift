import Foundation

guard let sentence = readLine() else { exit(0) }
let trimedSentence = sentence.trimmingCharacters(in: .whitespaces)
var count = 0

let words = trimedSentence.split(separator: " ")
print(words.count)