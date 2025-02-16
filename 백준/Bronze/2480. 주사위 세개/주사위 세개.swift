import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]

if a == b && b == c {
    print(10000 + a * 1000)
} else if a == b || a == c {
    print(1000 + a * 100)
} else if b == c {
    print(1000 + b * 100)
} else {
    print(max(a, b, c) * 100)
}