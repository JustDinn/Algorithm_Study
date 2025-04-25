import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var basket = [Int]()
for _ in 0..<n {
    for _ in 0..<1 {
        basket.append(0)
    }
}

for _ in 0..<m {
    let inputLine = readLine()!
    let components = inputLine.split(separator: " ")
    let i = Int(String(components[0]))!
    let j = Int(String(components[1]))!
    let k = Int(String(components[2]))!

    for index in 0..<basket.count {
        if index + 1 >= i && index + 1 <= j {
            let slowInt = Int(String(k))!
            basket[index] = slowInt
        }
    }
}

var result = ""
for number in basket {
    result += "\(number) "
}
print(result)