import Foundation

let n = Int(readLine()!)!
var result = ""

for i in 0..<2*n-1 {
    for j in 0..<2*n {
        if i < n {
            if j < i+1 || j > 2*n-2-i {
                result += "*"
            } else {
                result += " "
            }
        } else {
            if j > i || j < 2*n-1-i {
                result += "*"
            } else {
                result += " "
            }
        }
    }
    result += "\n"
}
print(result.trimmingCharacters(in: ["\n"]))