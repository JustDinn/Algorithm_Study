import Foundation

let X = Int(readLine()!)!

var sum = 0
var line = 0

while sum < X {
    line += 1
    sum += line
}

let indexInLine = X - (sum - line)  // 현재 대각선에서 몇 번째 항인지

let numerator: Int
let denominator: Int

if line % 2 == 0 {
    numerator = indexInLine
    denominator = line - indexInLine + 1
} else {
    numerator = line - indexInLine + 1
    denominator = indexInLine
}

print("\(numerator)/\(denominator)")