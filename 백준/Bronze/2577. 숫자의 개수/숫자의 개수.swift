import Foundation

let (a, b, c) = (Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!)
let result = String(a * b * c)
var count = [Int](repeating: 0, count: 10)

result.forEach { count[Int(String($0))!] += 1 }
count.forEach { print($0) }