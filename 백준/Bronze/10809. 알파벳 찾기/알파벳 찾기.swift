import Foundation

guard let word = readLine() else { exit(0) }
var dict = [Int](repeating: -1, count: 26)

for i in 0..<word.count {
    guard let asciiValue = word[word.index(word.startIndex, offsetBy: i)].asciiValue else { exit(0) }
    let index = Int(asciiValue) - 97
    
    if dict[index] == -1 {
        dict[index] = i
    }
}

for j in 0..<dict.count {
    if j == dict.count - 1 {
        print(dict[j], terminator: "")
    } else {
        print(dict[j], terminator: " ")
    }
}