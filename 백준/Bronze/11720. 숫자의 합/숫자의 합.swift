import Foundation

guard let nInput = readLine(), let n = Int(nInput) else { exit(0) }
guard let number = readLine() else { exit(0) }
var separatedNumbers: [Int] = []
var sum = 0

// 숫자 분리하기
for i in 0..<n {
    let character = number[number.index(number.startIndex, offsetBy: i)]
    
    guard let charToInt = Int(String(character)) else { exit(0) }
    separatedNumbers.append(charToInt)
}

// 모든 숫자 더하기
for number in separatedNumbers {
    sum += number
}

print(sum)