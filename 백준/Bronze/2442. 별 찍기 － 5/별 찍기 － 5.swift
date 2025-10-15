import Foundation

let n = Int(readLine()!)!
let max = 2 * n - 1

for i in 0..<n {
    let first = max / 2 - i
    let last = max / 2 + i
    
    for j in 0...last {
        if j >= first && j <= last {
            print("*", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    print()
}