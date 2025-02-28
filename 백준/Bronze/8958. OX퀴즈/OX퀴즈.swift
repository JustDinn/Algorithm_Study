import Foundation

let testCaseCount = Int(readLine()!)!

for _ in 0..<testCaseCount {
    let line = readLine()!
    var score = 0
    var consecutive = 0
    
    for char in line {
        if char == "O" {
            consecutive += 1
            score += consecutive
        } else {
            consecutive = 0
        }
    }
    
    print(score)
}