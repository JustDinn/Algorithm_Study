import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let h = input[0]
    let w = input[1]
    let n = input[2]
    
    let floor = (n - 1) % h + 1
    let room = (n - 1) / h + 1
    
    print(floor * 100 + room)
}