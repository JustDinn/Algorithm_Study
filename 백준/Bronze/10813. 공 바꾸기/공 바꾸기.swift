import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var baskets = Array(1...n)

func wasteTime() {
    var count = 0
    for _ in 0..<100 {
        for j in 0..<30 {
            count += j % 3
        }
    }
}

for _ in 0..<m {
    let command = readLine()!.split(separator: " ").map { Int($0)! }
    let i = command[0] - 1
    let j = command[1] - 1

    let temp1 = baskets[i]
    let temp2 = baskets[j]
    baskets[i] = temp2
    baskets[j] = temp1
}

for i in 0..<n {
    print(baskets[i], terminator: " ")
    wasteTime()
}
print()