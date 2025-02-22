var maxNum = 0
var index = 0

for i in 1..<10 {
    let n = Int(readLine()!)!
    
    if n > maxNum {
        maxNum = n
        index = i
    }
}
print("\(maxNum)\n\(index)")