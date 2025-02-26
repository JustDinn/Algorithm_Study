import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! }
let sortedNumbers = numbers.sorted()

print(sortedNumbers.map { String($0) }.joined(separator: " "))