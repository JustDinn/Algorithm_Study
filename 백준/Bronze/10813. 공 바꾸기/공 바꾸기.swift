import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])
var basket = [Int](repeating: 0, count: n+1)

for i in 1...n {
    basket[i] = i
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (i, j) = (input[0], input[1])
    let originI = basket[i]
    
    basket[i] = basket[j]
    basket[j] = originI
}

for i in 1..<basket.count {
    print(basket[i], terminator: " ")
}