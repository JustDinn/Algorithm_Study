// MARK: - Properties

var maxNumber = -1
var row = 0
var col = 0

// MARK: - Memo

// MARK: - Main

for i in 1..<10 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    for j in 0..<input.count {
        if input[j] > maxNumber {
            maxNumber = input[j]
            row = i
            col = j + 1
        }
    }
}

print(maxNumber)
print("\(row) \(col)")

// MARK: - Functions