import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])
var basket: [Int] = Array(repeating: 0, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (i, j, k) = (input[0], input[1], input[2])
    
    for index in i...j {
        basket[index] = k
    }
}

for i in 0...n {
    if i == 0 {
        continue
    } else {
        print(basket[i], terminator: " ")
    }
}