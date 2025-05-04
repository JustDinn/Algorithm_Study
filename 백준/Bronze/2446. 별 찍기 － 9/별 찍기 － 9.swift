import Foundation

let n = Int(readLine()!)!
var result = [String]()

for i in 0..<n {
    var line = ""
    
    for _ in 0..<i {
        line.append(" ")
    }
    for _ in 0..<(2 * (n - i) - 1) {
        line.append("*")
    }
    
    result.append(line)
}

for i in 1..<n {
    var line = ""
    
    for _ in 0..<(n - i - 1) {
        line.append(" ")
    }
    for _ in 0..<(2 * i + 1) {
        line.append("*")
    }
    
    result.append(line)
}

for line in result {
    print(line)
}