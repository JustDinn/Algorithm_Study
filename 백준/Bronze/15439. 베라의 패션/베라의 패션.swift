let n = Int(readLine()!)!
var count = 0

for i in 0..<n {
    for j in 0..<n {
        if i != j {
            count += 1
        }
    }
}

print(count)