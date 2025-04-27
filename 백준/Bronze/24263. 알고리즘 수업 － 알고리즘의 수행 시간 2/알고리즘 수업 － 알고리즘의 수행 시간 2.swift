import Foundation

let n = Int(readLine()!)!

var result = 0

for _ in 0..<n {
    for _ in 0..<1000 {
        result += 1
        result -= 1
    }
}

print(n)
print(1)