import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    let spaces = String(repeating: " ", count: n - i)
    let stars = String(repeating: "*", count: 2 * i - 1)
    print(spaces + stars)
}

for i in stride(from: n - 1, to: 0, by: -1) {
    let spaces = String(repeating: " ", count: n - i)
    let stars = String(repeating: "*", count: 2 * i - 1)
    print(spaces + stars)
}