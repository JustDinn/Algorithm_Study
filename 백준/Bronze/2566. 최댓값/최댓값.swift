import Foundation

var maxVal = Int.min
var row = 0
var col = 0

for i in 0..<9 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<9 {
        if input[j] > maxVal {
            maxVal = input[j]
            row = i
            col = j
        }
    }
}

print(maxVal)
print("\(row + 1) \(col + 1)")