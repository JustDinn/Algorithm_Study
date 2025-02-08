import Foundation

guard let sentence = readLine() else { exit(0) }
let trimedSentence = sentence.trimmingCharacters(in: .whitespaces)

let words = trimedSentence.split(separator: " ")
print(words.count)