let n = Int(readLine()!)!

for i in 0..<n {
    for j in 0..<2*n-1-i {
        if j < i {
            print(" ", terminator: "")
        } else {
            print("*", terminator: "")
        }
    }
    print()
}